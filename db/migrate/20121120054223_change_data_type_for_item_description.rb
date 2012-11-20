class ChangeDataTypeForItemDescription < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.text :description
    end
  end
end
