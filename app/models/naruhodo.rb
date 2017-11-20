class Naruhodo < ApplicationRecord
  # なるほどを1人1回しか押せないようにする
  validates_uniqueness_of :user_id, :scope => [:reply_id]
  validates :reply_id, {presence: true}
end
