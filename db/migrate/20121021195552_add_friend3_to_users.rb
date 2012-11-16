class AddFriend3ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :friend3, :string
  end
end
