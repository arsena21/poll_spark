class SignaturesController < ApplicationController


  def new
	@totals = last
	@signature = Signature.new
	@petition = find
	@items = Item.find(:all)
	if signed_in?
	@micropost = Micropost.new(:user_id => current_user.id, :petition_id => @petition.id)
	end
	@microposts = @petition.microposts.paginate(page: params[:page])
	
	if current_user
		@user = current_user
		@id = current_user.id				
		@friendsshared = Friend.where( :user_id => @id ).count
		@friendsleft = (5- Friend.where( :user_id => @id ).count)
		@friend = Friend.new

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
      flash[:success] = "Thanks for participating in the Campaign!"
      redirect_to petitions_path
    else
      render signatures_path
    end
  end
  
  
  end
