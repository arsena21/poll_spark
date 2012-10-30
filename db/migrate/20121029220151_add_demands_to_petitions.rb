class AddDemandsToPetitions < ActiveRecord::Migration
  def change
    add_column :petitions, :demands, :string
  end
end
