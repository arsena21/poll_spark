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
  	@petitions = Petition.all
  end
 
  def show
  	@petition = Petition.find(params[:id])
  end  
  

end
