class AddItemcostAndItemnameAndPicToItempairs < ActiveRecord::Migration
  def change
    add_column :itempairs, :itemcost, :integer
    add_column :itempairs, :itemname, :string
    add_column :itempairs, :pic, :string
  end
end
