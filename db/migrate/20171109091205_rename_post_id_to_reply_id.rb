class RenamePostIdToReplyId < ActiveRecord::Migration[5.1]
  def change
    rename_column :naruhodos, :post_id, :reply_id
  end
end
