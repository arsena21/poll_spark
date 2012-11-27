class MicropostsController < ApplicationController
  before_filter :signed_in_user

  def create
	@micropost = current_user.microposts.build(params[:micropost])
	@petition = @micropost.petition_id
	@location = @micropost.location
    if @micropost.save
      redirect_to @location
	  flash[:notice] = "Comment saved"
    else
      flash[:notice] = "Sorry, there has been an error. Post not created..."
	  redirect_to @location
    end
  end

  def destroy
  end
  

  
end