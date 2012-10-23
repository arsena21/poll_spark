class RemoveFriend1FromUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :friend1
  end

  def down
    add_column :users, :friend1, :string
  end
end
