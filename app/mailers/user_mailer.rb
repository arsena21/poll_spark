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
  
  def contact(params)
	@message = (params[:message])
	@email = (params[:email])
	@name = (params[:name])
    mail(:to => "ericarsenault6@gmail.com", :from => "ericarsenault6@gmail.com", :subject => "#{params[:subject]}")
  end  
  
  def sendme(user)
	@user = user
    mail(:to => "#{@user.email}", :subject => "Reminder...")
  end   
  
  end