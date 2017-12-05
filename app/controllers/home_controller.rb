class HomeController < ApplicationController
  def top
  end

  def mypage
    if current_user.gender == "male"
      @posts = Post.where(user_id: current_user.id)
    else
      @replies = Reply.where(user_id: current_user.id)
      @replies.each do |reply|
        temp = Post.find_by(id: reply.post_id)
        puts temp
        @posts << temp
      end
    end
  end
end
