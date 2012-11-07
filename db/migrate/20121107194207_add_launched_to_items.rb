class AddLaunchedToItems < ActiveRecord::Migration
  def change
    add_column :items, :launched, :string
  end
end
