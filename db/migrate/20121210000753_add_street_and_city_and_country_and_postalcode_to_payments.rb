class AddStreetAndCityAndCountryAndPostalcodeToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :street, :string
    add_column :payments, :city, :string
    add_column :payments, :country, :string
    add_column :payments, :postalcode, :string
  end
end
