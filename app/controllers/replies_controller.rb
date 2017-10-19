class RepliesController < ApplicationController
  def edit
  end

  def create
    @post = Post.find_by(id: params[:post_id])
    @reply = Reply.new(post_id: params[:post_id],content:params[:content])
    if @reply.save
      redirect_to("/posts/#{@post.id}")
    else
      render("posts/show")
    end
  end
end
