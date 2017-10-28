class Post < ApplicationRecord
  has_many :replies
  validates :title, {presence: true,length: {maximum: 40 }}
  validates :content, {presence: true}
  validates :user_id, {presence: true}

  def user
    return User.find_by(id: self.user_id)
  end
end
