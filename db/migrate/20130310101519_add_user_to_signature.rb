class AddUserToSignature < ActiveRecord::Migration
  def change
    add_column :signatures, :image_data, :text
  end
end
