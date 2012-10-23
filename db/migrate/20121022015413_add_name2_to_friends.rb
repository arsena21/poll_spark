class AddName2ToFriends < ActiveRecord::Migration
  def change
    add_column :friends, :name2, :string
  end
end
