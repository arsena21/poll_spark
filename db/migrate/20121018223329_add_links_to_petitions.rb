class AddLinksToPetitions < ActiveRecord::Migration
  def change
    add_column :petitions, :links, :string
  end
end
