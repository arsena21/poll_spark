class AddCompanyinfoToItems < ActiveRecord::Migration
  def change
    add_column :items, :companyinfo, :string
  end
end
