class PetitionsController < ApplicationController
  
  def create
    @petition = Petition.new(params[:petition])
    if @petition.save
      flash[:success] = "New Petition created!"
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
	petition = Petition.find(params[:id])
	if (current_user.vote != 0)
		uprating petition 	
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
