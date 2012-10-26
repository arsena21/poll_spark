class UserMailer < ActionMailer::Base
  default :from => "notifications@example.com"

  def registration_confirmation(user)
    @user = user
	mail(:to => "#{@user.email}")
  end
  
  def petition_confirmation(newpetition)
    @newpetition = newpetition
	mail(:to => "ericarsenault6@gmail.com", :from => "ericarsenault6@gmail.com")
  end  
  

  def share(params)
    mail(:to => "#{params[:to]}", :from => "#{params[:email]}", :subject => "#{params[:subject]}", :message => "#{params[:message]}")
  end
end