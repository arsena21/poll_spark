class AddConfirmedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :confirmed, :string
  end
  
  
end
