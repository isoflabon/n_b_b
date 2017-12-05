class AddNoticeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :notice, :boolean
  end
end
