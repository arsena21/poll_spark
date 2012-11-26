class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to petitions_path, notice: "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    cookies.delete(:remember_token)
    current_user = nil
    redirect_to petitions_path, notice: "Signed out!"
  end

  def failure
    redirect_to petitions_path, alert: "Authentication failed, please try again."
  end
end