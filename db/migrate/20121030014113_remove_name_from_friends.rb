class RemoveNameFromFriends < ActiveRecord::Migration
  def up
    remove_column :friends, :name
  end

  def down
    add_column :friends, :name, :string
  end
end
