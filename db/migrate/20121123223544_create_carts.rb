class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.string :item1
      t.integer :number1
      t.string :item2
      t.integer :number2
      t.string :item3
      t.integer :number3
      t.string :item4
      t.integer :number4
      t.string :item5
      t.integer :number5
      t.string :item6
      t.integer :number6
      t.string :item7
      t.integer :item7
      t.string :item8
      t.integer :number8
      t.string :item9
      t.integer :number9
      t.string :item10
      t.integer :number10

      t.timestamps
    end
  end
end
