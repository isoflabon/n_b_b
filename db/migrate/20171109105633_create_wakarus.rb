class CreateWakarus < ActiveRecord::Migration[5.1]
  def change
    create_table :wakarus do |t|
      t.integer :user_id
      t.integer :reply_id

      t.timestamps
    end
  end
end
