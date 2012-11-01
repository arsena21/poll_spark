class RemoveStripeCardTokenToPayments < ActiveRecord::Migration
  def up
    remove_column :payments, :stripe_card_token
  end

  def down
    add_column :payments, :stripe_card_token, :string
  end
end
