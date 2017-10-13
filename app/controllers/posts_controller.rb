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

  def about
    @post = Post.find_by(id: params[:id])
  end

end
