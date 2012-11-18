class ItemsController < ApplicationController
  def new
	@item = Item.new
  end

  def create
	@item = Item.new(params[:item])
	@item.save
	redirect_to items_path
  end

  def edit
	@item = Item.find(params[:id])
	@cost = @item.cost
	@payment = Payment.new
  end

  def update
	@item = Item.find(params[:id])
	@item.update_attributes(params[:item])
	redirect_to edit_item_path(@item)
  end

  def index
    @items = Item.find(:all)
  end
  

	def home
	    @items = Item.find(:all)
	end	
	def fitness
	    @items = Item.find(:all)
	end
	def food
	    @items = Item.find(:all)
	end
	def fun
	    @items = Item.find(:all)
	end	
	
	def book
	    @items = Item.find(:all)
	end
end