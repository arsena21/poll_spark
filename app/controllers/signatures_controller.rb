class SignaturesController < ApplicationController


  def new
	@signature = Signature.new
	@totals = last
	if current_user
		if test
			@b = "already signed"
		else
			@b = "ok to sign"
		end	
	else
		@b = "no user"
	end	
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
