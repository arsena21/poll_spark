class AddItemIdToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :item_id, :integer
  end
end
