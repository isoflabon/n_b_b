class Naruhodo < ApplicationRecord
  validates :user_id, {presence: true,  uniqueness: true}
  validates :reply_id, {presence: true}
end
