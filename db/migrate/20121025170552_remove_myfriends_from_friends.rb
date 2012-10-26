class RemoveMyfriendsFromFriends < ActiveRecord::Migration
  def self.up
	remove_column :friends, :myfriends
  end

  def self.down
  end
end
