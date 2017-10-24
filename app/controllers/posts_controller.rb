class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(title: params[:title],
                     content: params[:content])
    if @post.save
      redirect_to("/")
    else
      render("posts/new")
    end
  end

  def show

    @post = Post.find_by(id: params[:id])
    @replies = Reply.where(post_id: @post.id).order(created_at: :desc)

  end

  def edit

    @post = Post.find_by(id: params[:id])
    @replies = Reply.where(post_id: @post.id).order(created_at: :desc)

  end

  def update
    @post = Post.find_by(id: params[:id])
    @replies = Reply.where(post_id: @post.id).order(created_at: :desc)

    @post.content = params[:content]

    if @post.save
      redirect_to("/posts/#{@post.id}")
    else
      render("posts/edit")
    end

  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts")
  end
end
