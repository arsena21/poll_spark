class AddPicturesToItems < ActiveRecord::Migration
  def change
    add_column :items, :pictures, :string
  end
end
