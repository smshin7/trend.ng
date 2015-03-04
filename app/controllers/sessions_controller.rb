class SessionsController < ApplicationController

  CALLBACK_URL = "https://trend-ng.herokuapp.com/auth/instagram/callback"

  def connect
    redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL, :scope => "likes")
  end

  def callback
    @response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)

    # checks to see if user with same username already exists
    user = User.find_by_username(@response.user["username"])
    if user && user.access_token == @response.access_token 
    else
      # creates new user if user doesnt exist
      user = User.new
      user.name = @response.user["full_name"]
      user.username = @response.user["username"]
      user.access_token = @response.access_token
      user.save
    end
    # sets session access_token and user_id
    session[:access_token] = user.access_token
    session[:user_id] = user.id

    redirect_to root_path
  end

  def destroy 
    session[:user_id] = nil
    redirect_to root_path
  end
end
