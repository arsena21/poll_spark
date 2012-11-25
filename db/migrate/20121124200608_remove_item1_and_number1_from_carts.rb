class RemoveItem1AndNumber1FromCarts < ActiveRecord::Migration
  def up
    remove_column :carts, :item1
    remove_column :carts, :number1
  end

  def down
    add_column :carts, :number1, :integer
    add_column :carts, :item1, :string
  end
end
