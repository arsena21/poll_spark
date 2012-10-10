class AddPicsToPetitions < ActiveRecord::Migration
  def change
    add_column :petitions, :pics, :string
  end
end
