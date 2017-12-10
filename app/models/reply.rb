class Reply < ApplicationRecord
  belongs_to :post
  has_many :naruhodos
  has_many :wakarus
  validates :content, {presence: true}

  # replyのuser_idを元に返信したuserを特定
  def user
    return User.find_by(id: self.user_id)
  end

  # replyのpost_idを元に返信した投稿を特定
  def post
    return Post.find_by(id: self.post_id)
  end
end
