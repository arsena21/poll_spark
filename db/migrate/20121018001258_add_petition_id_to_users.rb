class AddPetitionIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :petition_id, :integer
  end
end
