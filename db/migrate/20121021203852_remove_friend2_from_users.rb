class RemoveFriend2FromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :friend2
  end

  def down
    add_column :users, :friend2, :string
  end
end
