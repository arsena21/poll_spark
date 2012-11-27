class PaymentsController < ApplicationController
	def new
		@payment = Payment.new
		@item = Item.find(params[:id])
	end

	def show
	end

	def create
		@payment = Payment.new(params[:payment])
		@num = @payment.price
		if @payment.save_with_payment(@payment, @num)
			@items = current_user.itempairs
			paying @items
			
			redirect_to checkout_path, :notice => "Thanks"
		else
			render :new
		end
	end
end
