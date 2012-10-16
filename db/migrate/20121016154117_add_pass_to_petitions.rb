class AddPassToPetitions < ActiveRecord::Migration
  def change
    add_column :petitions, :pass, :string
  end
end
