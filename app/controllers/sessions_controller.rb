class SessionsController < ApplicationController

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user["id"]
    redirect_to user_path(current_user)
  end

  def destroy 
  end
end
