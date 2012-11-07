class FriendsController < ApplicationController

  def create
	@friends = Friend.new(params[:friend])
	@id = current_user.id
	@friendsdone = Friend.where( :user_id => @id ).count
	@friendsleft = 5- @friendsdone
	if @friends.save
		flash[:success] = "Friend saved!"
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
			@id = current_user.id
			@friendsdone = Friend.where( :user_id => @id ).count
			@friendsleft = 5- @friendsdone
		if request.post?
			save_friend
			UserMailer.share(params).deliver
			flash[:success] = "Your message has been sent!"
			redirect_to petitions_path
		end
	end
	
	
	
	
	
end