class Reply < ApplicationRecord
  belongs_to :post
  has_many :naruhodos
  has_many :wakarus
  validates :content, {presence: true}
end
