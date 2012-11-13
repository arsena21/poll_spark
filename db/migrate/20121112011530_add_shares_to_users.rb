class AddSharesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :shares, :string
  end
end
