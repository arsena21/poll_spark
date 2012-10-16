class UsersController < ApplicationController

  def new
	@user = User.new
  end
  
  def destroy
    sign_out
    redirect_to root_url
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
	  sign_in @user
      flash[:success] = "Welcome to PollSpark!"
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def edit
  	@user = User.find(params[:id])
  end
  
  
  def update
	if current_user.update_attributes(params[:user])
		flash[:success] = "Modified Account!"
		redirect_to petitions_path
	else
		render 'edit'
	end
  end
  
  
end
