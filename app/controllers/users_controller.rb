class UsersController < ApplicationController

  def new
	@user = User.new
	if current_user.present?
		redirect_to petitions_path
	end	
  end
  
  def destroy
    sign_out
    redirect_to petitions_path
  end
  
  
  def remove
	@vote = current_user.vote
	#redirect_to(delete_path) and return if params[:cancel]
	#@petition = Petition.find.where( :id => @vote.vote1 )
	#@petitionvotes = @petition.rating
	#downvote @petitionvotes
	@vote.destroy
	change current_user
	redirect_to petitions_path
  end
  
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Thanks for Registering! An e-mail has been sent to you to confirm your account"
      redirect_to petitions_path
	  UserMailer.registration_confirmation(@user).deliver
    else
      render 'new'
    end
  end
  
  def edit
  	@user = User.find(params[:id])
	@status = @user.confirmed
		if @status == "false"
			confirm @user
			sign_in @user
			flash[:success] = "Account created!"
			redirect_to petitions_path	
		end		
  end
  
  
  def update
	if current_user.update_attributes(params[:user])
		flash[:success] = "Modified Account!"
		redirect_to petitions_path
	else
		flash[:success] = "NOT Modified Account!"
		redirect_to petitions_path
	end
  end
  
  def registered
	@user = current_user
  end
  
end
