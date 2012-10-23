class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
	add_index :friends, [:user_id, :created_at]
  end
end
