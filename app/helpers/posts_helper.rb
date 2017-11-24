module PostsHelper
  def messages(reply_id)
    Reply.where(p_id: reply_id)
  end
end
