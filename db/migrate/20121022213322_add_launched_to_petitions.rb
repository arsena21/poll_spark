class AddLaunchedToPetitions < ActiveRecord::Migration
  def change
    add_column :petitions, :launched, :string
  end
end
