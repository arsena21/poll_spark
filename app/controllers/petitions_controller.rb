class PetitionsController < ApplicationController
 
  def create
    @petition = Petition.new(params[:petition])
    @user = current_user
	if params[:done]
		if @petition.save
		  UserMailer.registration_confirmation(@petition).deliver
		  flash[:success] = "Petition has been submitted for review!"
		  redirect_to petitions_path
		else
		  flash[:success] = "Petition not saved"
		  render petitions_path
		end
	end	
	if params[:almostdone]
		if @petition.save
		  flash[:success] = "Campaign has been saved. It will be stored for two weeks unless it is submitted!"
		  change_user_status @user
		  user_petition_save @user
		  redirect_to edit_petition_path(@petition)
		else
		  flash[:success] = "Petition not saved"
		  redirect_to petitions_path
		end
	end		
  end
  
  def new
	if signed_in?
		redirect_to users_path
	end
	@petition = Petition.new
	@user = current_user
  end
  

  def index
  	@petitions = Petition.find(:all, :limit =>16)
  end
 
  def show
  	@petition = Petition.find(params[:id])
  end  
  
  def edit
  	@user = current_user
  	@petition = Petition.find(params[:id])
  end
  
  def update
	@petition = Petition.find(params[:id])
	@user = current_user
	if params[:done] || params[:almostdone]
			if params[:done]
				if @petition.update_attributes(params[:petition])
				  UserMailer.registration_confirmation(@petition).deliver
				  flash[:success] = "Campaign has been submitted for review!"
				  redirect_to petitions_path
				  return
				else
				  render edit_petition_path(@petition)
				  return
				end
			end	
		if params[:almostdone]
			if @petition.update_attributes(params[:petition])
			  flash[:success] = "Campaign saved"
			  user_petition_save @user
			  redirect_to edit_petition_path(@petition)
			  return
			else
			  flash[:success] = "Petition not saved"
			  redirect_to edit_petition_path(@petition)
			  return
			end
		end		
	end
		if current_user.admin?
			if @petition.update_attributes(params[:petition])
			  flash[:success] = "Petition has been saved!"
			  redirect_to petitions_path
			end
		end
		if (current_user.vote != 0)
			    uprating @petition
				votes_down current_user
				flash[:success] = "Thanks for your vote!"
				redirect_to petitions_path
		end
		if (current_user.vote == 0)
					flash[:failure] = "No more votes!"
					redirect_to petitions_path
		end
	end


  
  def destroy
	Petition.find(params[:id]).destroy
    flash[:success] = "Petition proposal destroyed."
    redirect_to root_path
  end
  
end

