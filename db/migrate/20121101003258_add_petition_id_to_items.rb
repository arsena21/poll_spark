class AddPetitionIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :petition_id, :integer
  end
end
