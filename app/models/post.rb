class Post < ApplicationRecord
  has_many :replies
  validates :title, {presence: true, length: {maximum: 40 }}
  validates :content, {presence: true, length: {minimum: 40 }}
  validates :user_id, {presence: true}

  # onewaylove=片想い, together=交際中, date=デート, present=プレゼント, lovevision=恋愛観,
  # battle=ケンカ, affair=浮気, sexual=性事情, other=その他
  enum category: { onewaylove: 1, together: 2, date: 3, present: 4,
                   lovevision: 5, battle: 6, affair:7, sexual: 8, other: 0 }

  def user
    return User.find_by(id: self.user_id)
  end
end
