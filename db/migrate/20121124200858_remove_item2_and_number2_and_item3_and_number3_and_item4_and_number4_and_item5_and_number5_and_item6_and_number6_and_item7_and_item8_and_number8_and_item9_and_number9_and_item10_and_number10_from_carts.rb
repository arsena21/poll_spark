class RemoveItem2AndNumber2AndItem3AndNumber3AndItem4AndNumber4AndItem5AndNumber5AndItem6AndNumber6AndItem7AndItem8AndNumber8AndItem9AndNumber9AndItem10AndNumber10FromCarts < ActiveRecord::Migration
  def up
    remove_column :carts, :item2
    remove_column :carts, :number2
    remove_column :carts, :item3
    remove_column :carts, :number3
    remove_column :carts, :item4
    remove_column :carts, :number4
    remove_column :carts, :item5
    remove_column :carts, :number5
    remove_column :carts, :item6
    remove_column :carts, :number6
    remove_column :carts, :item7
    remove_column :carts, :item8
    remove_column :carts, :number8
    remove_column :carts, :item9
    remove_column :carts, :number9
    remove_column :carts, :item10
    remove_column :carts, :number10
  end

  def down
    add_column :carts, :number10, :integer
    add_column :carts, :item10, :string
    add_column :carts, :number9, :integer
    add_column :carts, :item9, :string
    add_column :carts, :number8, :integer
    add_column :carts, :item8, :string
    add_column :carts, :item7, :string
    add_column :carts, :number6, :integer
    add_column :carts, :item6, :string
    add_column :carts, :number5, :integer
    add_column :carts, :item5, :string
    add_column :carts, :number4, :integer
    add_column :carts, :item4, :string
    add_column :carts, :number3, :integer
    add_column :carts, :item3, :string
    add_column :carts, :number2, :integer
    add_column :carts, :item2, :string
  end
end
