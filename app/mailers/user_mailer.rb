class UserMailer < ActionMailer::Base
  default :from => "notifications@example.com"

  def registration_confirmation(user)
    @user = user
	mail(:to => "#{@user.email}")
  end
  
  def petition_confirmation(newpetition)
    @newpetition = newpetition
	mail(:to => "ericarsenault6@gmail.com", :from => "ericarsenault@gmail.com")
  end  
  

  def share(params)
	@message = (params[:message])
	@from = (params[:email])
    mail(:to => "#{params[:to]}", :from => @from, :subject => "#{params[:subject]}")
  end
  end