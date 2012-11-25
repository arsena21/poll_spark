class AddItemIdToItempairs < ActiveRecord::Migration
  def change
    add_column :itempairs, :item_id, :integer
  end
end
