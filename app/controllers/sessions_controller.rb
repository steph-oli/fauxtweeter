class SessionsController < ApplicationController
  # before_action :require_login
  
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Successfully logged in!'
    else 
      flash.now.alert = 'Incorrect email or password. Try again!'
      render :new
    end 
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path, notice: "Logged out!"
  end

end
