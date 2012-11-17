class SignaturesController < ApplicationController
	def edit
	end

  def new
	@totals = Signature.find(:last)
	@signature = Signature.new
		
		@petitions = Petition.find(:all)
		@petitions.each do |petition| 
			if petition.pass == "pass"
				if petition.launched == "yes"
					@petition = petition
				end	
			end
		end	
		
	@items = Item.find(:all)
	if signed_in?
	@micropost = Micropost.new(:user_id => current_user.id, :petition_id => @petition.id)
	end
#	if @petition.microposts.any?
#	@microposts = @petition.microposts.paginate(page: params[:page], per_page: 15)
#	end
	
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
	  signature current_user
      flash[:success] = "Thanks for participating in the Campaign!"
		if signed_in? && current_user.vote == 0  && current_user.signer == "yes" && current_user.shares.to_i > 4 
			redirect_to done_path
		else       
			redirect_to petitionnow_path
		end
	else
      redirect_to petitionnow_path
    end
  end
  
  
  end
