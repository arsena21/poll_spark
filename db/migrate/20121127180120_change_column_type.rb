class ChangeColumnType < ActiveRecord::Migration
  def up
	change_column :payments, :item_id, :string
  end

  def down
  end
end
