class AddParentsId < ActiveRecord::Migration[5.1]
  def change
    add_column :replies, :p_id, :integer
  end
end
