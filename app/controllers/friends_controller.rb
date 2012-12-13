class FriendsController < ApplicationController

  def create
	@friends = Friend.new(params[:friend])
	@id = current_user.id
	@friendsdone = Friend.where( :user_id => @id ).count
	@friendsleft = 5- @friendsdone
	if @friends.save
		flash[:success] = "Friend saved!"
		shared @friendsdone
		redirect_to share_path
    else
		flash.now[:success] = "Petition not saved"
		render 'new'
    end
  end
  
  
  
  
	def new
		if current_user
			@id = current_user.id				
			@friendsdone = Friend.where( :user_id => @id ).count
			@friendsleft = 5- @friendsdone
			@friends = Friend.new
		end 
	end 
	
	
	def email_share
		if signed_in?
			@id = current_user.id
			@friendsdone = Friend.where( :user_id => @id ).count			
			@friendsleft = 5- @friendsdone
		if request.post?
			save_friend
			UserMailer.share(params).deliver
			flash[:success] = "Thanks for sharing!"
			@friendsdone = Friend.where( :user_id => @id ).count
			shared @friendsdone
			if signed_in? && current_user.votesleft == 0  && current_user.signer == "yes" && current_user.shares.to_i > 4 
				flash[:success] = "Thanks for participating in Generation 315!"
				redirect_to done_path
			else 
				if current_user.signer == "yes" && current_user.shares.to_i > 4 
					flash[:success] = "Thanks for sharing! Help us determine the next campaign by voting 3 times."
					redirect_to petitions_path
				else
					flash[:success] = "Thanks for sharing! Please participate in the current campaign below!"
					redirect_to petitionnow_path				
				end
			end
		end
		end
	end
	
	def sendme
		@user = current_user
		UserMailer.sendme(@user).deliver
		flash[:success] = "Thanks for sharing!"
		if signed_in? && current_user.votesleft == 0  && current_user.signer == "yes" && current_user.shares.to_i > 4 
			redirect_to done_path
		else 
			redirect_to share_path
		end		
	end 	
end