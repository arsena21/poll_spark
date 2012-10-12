class AddTotalToSignatures < ActiveRecord::Migration
  def change
    add_column :signatures, :total, :integer
  end
end
