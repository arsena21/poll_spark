class UserMailer < ActionMailer::Base

  def registration_confirmation(newpetition)
    @newpetition = newpetition
	mail(:to => "ericarsenault6@gmail.com", :from => "ericarsenault6@gmail.com")
  end
end