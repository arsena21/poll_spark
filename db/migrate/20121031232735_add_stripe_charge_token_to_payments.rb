class AddStripeChargeTokenToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :stripe_charge_token, :string
  end
end
