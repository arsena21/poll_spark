class CartsController < ApplicationController
  def new
  end

  def edit
  end

  def destroy
	@itemnumber = current_user.itempairs.find(params[:item_number])
	@itemnumber.destroy
	redirect_to carts_path
  end

  def update
  end

  def index
	@items = current_user.itempairs
	@total = 0
	@payment = Payment.new
	@list = ""
	@no = 0
  end

  def create
  end
  
  def checkout
	
  end
  
  
end
