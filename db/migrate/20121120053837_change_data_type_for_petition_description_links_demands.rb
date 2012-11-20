class ChangeDataTypeForPetitionDescriptionLinksDemands < ActiveRecord::Migration
  def change
    change_table :petitions do |t|
      t.text :description
      t.text :links
      t.text :demands
    end
  end
end
