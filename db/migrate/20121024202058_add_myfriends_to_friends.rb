class AddMyfriendsToFriends < ActiveRecord::Migration
  def change
    add_column :friends, :myfriends, :array
  end
end
