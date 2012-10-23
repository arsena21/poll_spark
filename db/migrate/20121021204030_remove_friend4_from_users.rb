class RemoveFriend4FromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :friend4
  end

  def down
    add_column :users, :friend4, :string
  end
end
