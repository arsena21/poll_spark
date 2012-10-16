class PetitionsController < ApplicationController
 
  def create
    @petition = Petition.new(params[:petition])
    if @petition.save
	  UserMailer.registration_confirmation(@petition).deliver
      flash[:success] = "Petition has been submitted for review!"
      redirect_to petitions_path
	else
	  redirect_to newpetition_path
    end
  end
  
  def new
	@petition = Petition.new
  end
  

  def index
  	@petitions = Petition.find(:all, :limit =>16)
  end
 
  def show
  	@petition = Petition.find(params[:id])
  end  
  
  def edit
  	@petition = Petition.find(params[:id])
  end
  
  def update
	@petition = Petition.find(params[:id])
	if current_user.admin
		if @petition.update_attributes(params[:petition])
		  flash[:success] = "Petition has been saved!"
		  redirect_to petitions_path
		end
	else
		if (current_user.vote != 0)
			uprating @petition 	
			votes_down current_user
			flash[:success] = "Vote count changed!"
			redirect_to petitions_path
		else if (current_user.vote = 0)
			flash[:failure] = "No more votes!"
			redirect_to petitions_path
		end
		end
	end
  end
  
    def destroy
	Petition.find(params[:id]).destroy
    flash[:success] = "Petition proposal destroyed."
    redirect_to root_path
  end
  
end

