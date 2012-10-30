class MicropostsController < ApplicationController
  before_filter :signed_in_user

  def create
     
	@micropost = current_user.microposts.build(params[:micropost])
	@petition = @micropost.petition_id
    if @micropost.save
      redirect_to edit_petition_path(@petition)
    else
      flash[:notice] = "Sorry, there has been an error. Post not created..."
	  redirect_to edit_petition_path(@petition)
    end
  end

  def destroy
  end
  

  
end