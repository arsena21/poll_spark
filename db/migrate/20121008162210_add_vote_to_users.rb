class AddVoteToUsers < ActiveRecord::Migration
  def change
    add_column :users, :vote, :integer
  end
end
