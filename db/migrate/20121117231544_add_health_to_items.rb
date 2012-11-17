class AddHealthToItems < ActiveRecord::Migration
  def change
    add_column :items, :health, :string
  end
end
