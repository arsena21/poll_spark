class SignaturesController < ApplicationController
  def new
	@signature = Signature.new
	@totals = last
  end
  
  def create
    @signature = Signature.new(params[:signature])
    if @signature.save
     	flash[:success] = "Thanks for signing the petition!"
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  
  end
