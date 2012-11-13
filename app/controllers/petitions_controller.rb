class PetitionsController < ApplicationController
 
  def create
    @petition = Petition.new(params[:petition])
    @user = current_user
	if params[:done] || params[:almostdone]
			if params[:done]
				if @petition.save
				  UserMailer.petition_confirmation(@petition).deliver
				  flash[:success] = "Campaign has been submitted for review!"
				  redirect_to petitions_path
				  if !@user.admin?
					user_petition_save @user
					change_user_status @user
				  end
				  return
				else
				  render 'new'
				  return
				end
			end	
		if params[:almostdone]
			if @petition.save
			  flash[:success] = "Campaign saved"
			  user_petition_save @user
			  redirect_to edit_petition_path(@petition)
			  if !@user.admin?
				change_user_status @user
				user_petition_save @user
			  end
			  return
			else
			  flash[:success] = "Petition not saved"
			  render 'new'
			  return
			end
		end		
	end
	end
  
  def new
	@petition = Petition.new
	@user = current_user
  end
  

  def index
  	@petitions = Petition.find(:all)
	@totals = last
	@user = current_user
  end
 
  def show
  	@petition = Petition.find(params[:id])
  end  
  
  def edit
  	@user = current_user
  	@items = Item.find(:all)
	@petition = Petition.find(params[:id])
	if signed_in?
	@micropost = Micropost.new(:user_id => current_user.id, :petition_id => @petition.id)
	end
	@microposts = @petition.microposts.paginate(page: params[:page])	
end
  
  def update
	@petition = Petition.find(params[:id])
	@user = current_user
	if params[:done] || params[:almostdone]
			if params[:done]
				if @petition.update_attributes(params[:petition])
				  UserMailer.petition_confirmation(@petition).deliver
				  flash[:success] = "Campaign has been submitted for review! You will be contacted shortly."
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
				return
		end		
		if (current_user.vote == 0)
					flash[:failure] = "No more votes!"
					redirect_to petitions_path
		end		


	end


  
  def destroy
	@petition = Petition.find(params[:id])
	@user = User.search_by(@petition.user_id)
	updating @user
	Petition.find(params[:id]).destroy
    flash[:success] = "Petition proposal destroyed."
    redirect_to root_path
  end
  
end

