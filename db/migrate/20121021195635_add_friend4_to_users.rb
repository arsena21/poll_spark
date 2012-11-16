class AddFriend4ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :friend4, :string
  end
end
