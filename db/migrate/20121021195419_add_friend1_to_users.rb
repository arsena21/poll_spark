class AddFriend1ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :friend1, :string
  end
end
