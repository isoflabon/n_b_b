class RepliesController < ApplicationController
  def edit
  end

  def create
    @post = Post.find_by(id: params[:id])
    @reply = Reply.new(post_id: params[:id],content:params[:content])
    binding.pry
    if @reply.save
      redirect_to("/posts/#{@post.id}")
    else
      render("posts/show")
    end
  end
end
