class AddCompanyToItems < ActiveRecord::Migration
  def change
    add_column :items, :company, :string
  end
end
