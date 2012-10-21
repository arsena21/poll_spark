module SessionsHelper

  def sign_in(user)
    cookies[:remember_token] = user.remember_token
    self.current_user = user
  end
  
  def signed_in?
    !current_user.nil?
  end
  
    def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end
  
    def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
	end
	
  def votes_left(user)
	user.vote
  end
 
 def votes_down(user)
	user.vote -= 1
	user.save
  end
  
 def current_user?(user)
    user == current_user
  end

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in."
    end
  end
  
end
