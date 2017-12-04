class AddPostscriptToPosts < ActiveRecord::Migration[5.1]
  def change
      add_column :posts, :postscript, :text
  end
end
