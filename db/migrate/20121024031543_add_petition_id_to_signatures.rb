class AddPetitionIdToSignatures < ActiveRecord::Migration
  def change
    add_column :signatures, :petition_id, :string
  end
end
