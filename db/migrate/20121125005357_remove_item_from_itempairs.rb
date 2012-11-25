class RemoveItemFromItempairs < ActiveRecord::Migration
  def up
    remove_column :itempairs, :item
  end

  def down
    add_column :itempairs, :item, :integer
  end
end
