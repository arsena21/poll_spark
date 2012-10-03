class PetitionsController < ApplicationController
  
  def create
    @petition = Petition.new(params[:petition])
    if @petition.save
      flash[:success] = "New Petition created!"
      redirect_to root_path
	else
	  redirect_to petitions_path
    end
  end
  
  def new
		@petition = Petition.new
  end
  
  def index
    @petitions = Petition.all
  end
  

end
