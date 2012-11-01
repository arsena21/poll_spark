class AddPriceToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :price, :integer
  end
end
