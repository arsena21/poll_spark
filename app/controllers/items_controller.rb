class ItemsController < ApplicationController
  def new
	@item = Item.new
  end

  def create
	@item = Item.new(params[:item])
	@item.save
	redirect_to allitems_path
  end

  def edit
	@item = Item.find(params[:id])
	@payment = Payment.new
  end

  def update
  end

  def index
    	@items = Item.find(:all)
  end
end
