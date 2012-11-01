class Payment < ActiveRecord::Base
  belongs_to :user
  attr_accessor :stripe_card_token
  attr_accessible :stripe_card_token, :stripe_customer_token, :stripe_charge_token, :user_id, :email, :item_id, :price

def save_with_payment(payee)
  if valid?
	charge = Stripe::Charge.create(description: email, amount: price, currency: "cad", card: stripe_card_token)
	payee.stripe_charge_token = charge.id
	save!
  end
rescue Stripe::InvalidRequestError => e
  logger.error "Stripe error while creating customer: #{e.message}"
  errors.add :base, "There was a problem with your credit card."
  false
end
end
