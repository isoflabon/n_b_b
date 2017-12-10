class HomeController < ApplicationController
  before_action :confirm_current_user, only: [:mypage]

  def top
  end

  def mypage
    if current_user.gender == "male"
      @posts = Post.where(user_id: params[:user_id]).order(created_at: :desc)
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


  private

  def confirm_current_user
    # 見ようとしているユーザの設定
    @see_user = User.find_by(id: params[:user_id])
    # 他ユーザが別のユーザのマイページを参照しようとする場合
    if current_user != @see_user
      flash[:notice] = "他人のマイページは参照できません。"
      redirect_to("/posts")
    end
  end
end
