class AddUserIdToItempairs < ActiveRecord::Migration
  def change
    add_column :itempairs, :user_id, :integer
  end
end
