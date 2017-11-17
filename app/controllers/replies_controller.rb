class RepliesController < ApplicationController
  # 男性はコメントできないようにした
  before_action :male_forbid, only: [:create]

  def edit
  end

  def create
    @post = Post.find_by(id: params[:post_id])
    @reply = Reply.new(post_id: params[:post_id],
                       content: params[:content],
                       user_id: current_user.id,
                       p_id: params[:p_id])
    if @reply.save
      redirect_to("/posts/#{@post.id}")
    else
      redirect_to("/posts/#{@post.id}")
    end
  end
end
