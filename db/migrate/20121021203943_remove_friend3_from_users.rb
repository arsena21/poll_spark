class RemoveFriend3FromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :friend3
  end

  def down
    add_column :users, :friend3, :string
  end
end
