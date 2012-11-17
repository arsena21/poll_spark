class StaticPagesController < ApplicationController

  def help
  end

  def petition
  end

  def about
  end
 
  def contact
	if request.post?
	UserMailer.contact(params).deliver
	flash[:success] = "Thanks for contacting us!"
		redirect_to contact_path
	end
  end 
 
end
