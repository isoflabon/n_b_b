class Post < ApplicationRecord
  validates :title, {length: {maximum: 40 }}
end
