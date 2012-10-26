class AddUserIdToSignatures < ActiveRecord::Migration
  def change
    add_column :signatures, :user_id, :string
  end
end
