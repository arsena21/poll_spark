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
    redirect_to petitions_path, :notice => "Thank you for your support!"
  else
    render :new
  end
  end
end
