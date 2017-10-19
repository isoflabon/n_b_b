class Post < ApplicationRecord
  has_many :replies
  validates :title, {presence: true,length: {maximum: 40 }}
  validates :content, {presence: true}
end
