class Naruhodo < ApplicationRecord
  validates :user_id, {presence: true}
  validates :reply_id, {presence: true}
end
