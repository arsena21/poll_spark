class CreateItempairs < ActiveRecord::Migration
  def change
    create_table :itempairs do |t|
      t.integer :item
      t.integer :number

      t.timestamps
    end
  end
end
