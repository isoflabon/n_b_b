class HomeController < ApplicationController
  def top
  end

  def mypage
    if current_user.gender == "male"
      @posts = Post.where(user_id: params[:user_id])
    else
      # 配列の初期化
      @posts = []
      # 返信した内容を取って来る
      @replies = Reply.where(user_id: params[:user_id])
      @replies.each do |reply|
        # replyを元に投稿を探し出す
        temp = reply.post
        # 配列に追加
        @posts << temp
        # 1つの投稿にコメントをいくつかすると探し出した投稿に重複が起きるので重複を削除
        @posts = @posts.uniq
      end
    end
  end
end
