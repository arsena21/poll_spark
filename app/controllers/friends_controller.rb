class FriendsController < ApplicationController
  before_filter :signed_in_user

  def create
    @friend = current_user.friends.build(params[:friend])
	
	if @friend.save
      flash[:success] = "Friend saved!"
      redirect_to petitionnow_path
    else
			@id = current_user.id				
			@friendsleft = (5- Friend.where( :user_id => @id ).count)
			@totals = last
			if current_user
				@signature = Signature.new
				@user = current_user
				if test
					@b = "already signed"
				else
					@b = "ok to sign"
				end	
			else
				@b = "no user"
			end	

		render 'signatures/new'
    end

  end

end