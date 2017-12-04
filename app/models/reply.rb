class Reply < ApplicationRecord
  belongs_to :post
  has_many :naruhodos
  has_many :wakarus
  validates :content, {presence: true}

  def user
    return User.find_by(id: self.user_id)
  end
end
