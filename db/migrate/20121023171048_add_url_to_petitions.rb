class AddUrlToPetitions < ActiveRecord::Migration
  def change
    add_column :petitions, :url, :string
  end
end
