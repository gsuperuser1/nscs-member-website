class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(request.env["omniauth.auth"])
    puts "These are the tokens in omniauth.auth"
    puts request.env["omniauth.auth"]
    session[:user_id] = user.id
    puts "here is user"
    puts user
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
