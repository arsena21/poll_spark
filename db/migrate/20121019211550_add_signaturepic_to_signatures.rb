class AddSignaturepicToSignatures < ActiveRecord::Migration
  def change
    add_column :signatures, :signaturepic, :string
  end
end
