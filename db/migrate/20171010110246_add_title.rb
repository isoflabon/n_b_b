class AddTitle < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :title, :text
  end
end
