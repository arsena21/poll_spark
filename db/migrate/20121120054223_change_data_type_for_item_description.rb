class ChangeDataTypeForItemDescription < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.change :description, :text
    end
  end
end
