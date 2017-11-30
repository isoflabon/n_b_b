class RepliesController < ApplicationController
  # 男性はコメントできないようにするbefore_actionは悩みを投稿した男性がコメントに返信するために削除した

  def edit
  end

  def create
    @post = Post.find_by(id: params[:post_id])
    content = params[:comment] ? params[:comment] : params['reply-content']
    @reply = Reply.new(post_id: params[:post_id],
                       content: content,
                       user_id: current_user.id,
                       p_id: params[:p_id])
    # 現在のuserが悩みを投稿した男性だった場合
    if current_user == @post.user
      # 親の返信をreply_pに格納
      reply_p = Reply.find_by(id: @reply.p_id)
      @notice_user = reply_p.user
    # 悩みを女性がコメントした場合は男性に通知
    elsif  @reply.user.gender == "female"
      @notice_user = @post.user
    end
    if @reply.save
      NoticeMailer.send_when_reply(@notice_user,@post).deliver
      redirect_to("/posts/#{@post.id}")
    else
      flash[:notice] = "コメントを保存できませんでした"
      redirect_to("/posts/#{@post.id}")
    end
  end
end
