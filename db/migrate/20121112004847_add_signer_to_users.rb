class AddSignerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :signer, :string
  end
end
