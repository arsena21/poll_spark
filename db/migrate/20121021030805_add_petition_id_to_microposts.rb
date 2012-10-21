class AddPetitionIdToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :petition_id, :integer
  end
end
