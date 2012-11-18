class RemoveHealthFromItems < ActiveRecord::Migration
  def up
    remove_column :items, :health
  end

  def down
    add_column :items, :health, :string
  end
end
