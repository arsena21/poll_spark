class AddPetitionerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :petitioner, :string
  end
end
