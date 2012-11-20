class ChangeDataTypeForPetitionDescriptionLinksDemands < ActiveRecord::Migration
  def change
    change_table :petitions do |t|
      t.change :description, :text
      t.change :links, :text
      t.change :demands, :text
    end
  end
end
