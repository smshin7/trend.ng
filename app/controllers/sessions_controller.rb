class SessionsController < ApplicationController

  CALLBACK_URL = "http://localhost:3000/auth/instagram/callback"
  
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user["id"]
    #pry

    #response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)
    #session[:access_token] = response.access_token
    #user.access_token = session[:access_token]
    #user.save

    redirect_to root_path
  end

  def destroy 
    session[:user_id] = nil
    redirect_to root_path
  end
end
