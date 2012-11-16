class AddFriend2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :friend2, :string
  end
end
