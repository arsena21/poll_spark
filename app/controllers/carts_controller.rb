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
  end

  def create
  end
end
