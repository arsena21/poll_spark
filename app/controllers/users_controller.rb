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
	#@votedfor = Vote.where(:user_id=>params[:current_user]).where(:vote1=>params[:petition])
	#@votedfor = Vote.where(current_user=>params[:user_id])
	@votedfor = current_user.vote
	@vote1 = @votedfor.vote1
	@vote2 = @votedfor.vote2
	@vote3 = @votedfor.vote3
	@petitionnum = params[:order_param]
	@petition = Petition.find(params[:order_param])
	@rating = @petition.rating
	#if @vote1 == params[:zing]
		#@deleting = @vote1
	#@votedfor.vote1.destroy
	#redirect_to(delete_path) and return if params[:cancel]
	#@petition = Petition.find.where( :id => @vote.vote1 )
	#@petitionvotes = @petition.rating
	#downvote @petitionvotes
	flash[:success] = "Vote removed!"

	if @vote1 == @petitionnum.to_i
		deleting1 @votedfor
		change current_user
		updati @petition
		redirect_to petitions_path
		return
	end
	if @vote2 == @petitionnum.to_i
		deleting2 @votedfor
		change current_user
		updati @petition
		redirect_to petitions_path
		return
	end
	if @vote3 == @petitionnum.to_i
		deleting3 @votedfor
		change current_user
		updati @petition
		redirect_to petitions_path
		return
	end




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
  	@user = current_user
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



  	def add
		current_user.itempairs.create( :item_id => params[:item_id], :number => params[:number], :itemname => params[:itemname], :pic => params[:pic], :itemcost => params[:itemcost] )
		redirect_to items_path
	end







end
