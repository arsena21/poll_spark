class SignaturesController < ApplicationController
	def edit
	end

  def new
	@totals = Signature.find(:last)
	@signature = Signature.new
	@petition = find2
	@items = Item.find(:all)
	@location = petitionnow_path
	if signed_in?
	@micropost = Micropost.new(:user_id => current_user.id, :petition_id => @petition.id)
	end
	if @petition.microposts.any?
	@microposts = @petition.microposts.paginate(page: params[:page], per_page: 15)
	end
	
	if signed_in?
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
	  signature current_user
      flash[:success] = "Thanks for participating in the Campaign!"
		if signed_in? && current_user.votesleft == 0  && current_user.signer == "yes" && current_user.shares.to_i > 4 
			flash[:success] = "Thanks for participating in Generation 315!"
			redirect_to done_path
		else       
			if current_user.signer == "yes" && current_user.votesleft == 0
				flash[:success] = "Thanks for participating! Help us spread the word by sharing with friends."
				redirect_to share_path
			else
				flash[:success] = "Thanks for participating! Help us determine the next campaign by voting 3 times."
				redirect_to petitions_path
			end
		end
	else
      render 'new'
    end
  end
  
  def nope
	if signed_in?
	signature current_user
		if signed_in? && current_user.votesleft == 0  && current_user.signer == "yes" && current_user.shares.to_i > 4 
			flash[:success] = "Thanks for participating in Generation 315!"
			redirect_to done_path
		else       
			if current_user.signer == "yes" && current_user.votesleft == 0
				flash[:success] = "Hopefully a campaign you believe in will get launched! Help us spread the word by sharing with friends."
				redirect_to share_path
			else
				flash[:success] = "Hopefully a campaign you believe in will get launched! Help us determine the next campaign by voting 3 times."
				redirect_to petitions_path
			end
		end	
	else
	redirect_to signin_path
	flash[:notice] = "Please sign in!"
	
	end
	
  end
  
  
  end
