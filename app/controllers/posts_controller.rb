class PostsController < ApplicationController
  # 女性は悩みの投稿ができないようにした
  before_action :female_forbid, only: [:new]

  def index
      # viewで「全て」が選択されたときにTrue
      if params[:category] == '0'
        @posts = Post.all.order(created_at: :desc)
      else
        # ジャンルのカテゴリに合わせた一覧表示
        @posts = Post.where(category: params[:category]).order(created_at: :desc)
      end
  end

  def new
    @post = Post.new
  end

  def create
    # カテゴリーが選択されない場合の投稿の場合はその他に分類
    category = params[:post] ? params[:post][:category] : 'other'
    @post = Post.new(title: params[:title],
                     content: params[:content],
                     user_id: current_user.id,
                     category: category)
    if @post.save
      flash[:notice] = "悩みを投稿しました"
      redirect_to("/posts/#{@post.id}")
    else
      flash[:notice] = "タイトルと内容は必須入力です"
      render("posts/new")
    end
  end

  def show
    @post = current_post
    @user = User.find_by(id: @post.user_id)
    # 悩みに対するコメントを格納
    @replies = current_reply
    @gender = User.find_by(gender: params[:gender])
  end

  def edit

    @post = current_post
    @replies = current_reply

  end

  def update
    @post = current_post
    @replies = current_reply

    @post.postscript = params[:postscript]

    if @post.save
      redirect_to("/posts/#{@post.id}")
    else
      render("posts/show")
    end

  end

  def destroy
    # 悩みを削除したときそれに関連するコメントも削除
    @post = current_post
    @replies = Reply.where(post_id: @post.id)
    @replies.delete_all
    @post.destroy
    redirect_to("/posts")
  end

  private

  def current_post
    Post.find_by(id: params[:id])
  end

  def current_reply
    Reply.where(post_id: current_post.id).order(created_at: :desc)
  end
end
