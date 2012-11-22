class AddPetitionidToPetitionType < ActiveRecord::Migration
  def change
    add_column :petition_types, :petitionid, :integer
  end
end
