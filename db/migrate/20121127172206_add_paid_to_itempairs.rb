class AddPaidToItempairs < ActiveRecord::Migration
  def change
    add_column :itempairs, :paid, :string
  end
end
