module PostsHelper
  def messages(reply_id)
    Reply.where(p_id: reply_id)
  end

  def naruhodoCount(reply_id)
    Naruhodo.where(reply_id: reply_id).count
  end

  def wakaruCount(reply_id)
    Wakaru.where(reply_id: reply_id).count
  end

  def wakaruAlready(current_user, reply_id)
    Wakaru.where(user_id: current_user, reply_id: reply_id).present?
  end

  def naruhodoAlready(current_user, reply_id)
    Naruhodo.where(user_id: current_user, reply_id: reply_id).present?
  end

end
