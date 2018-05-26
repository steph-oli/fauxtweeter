class UsersController < ApplicationController
  # before_action :require_login, except: [:new, :create]
  # has_secure_password
  
  def new
    @user = User.new
  end

  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end 

  def create
    @user = User.new(user_params)
      if @user.save
        flash[:notice] = "Account created successfully!"
        redirect_to users_path
      else
        flash.now.alert = "Oops, couldn't create your account. Are you using a valid email / password? You should try again!"
        render :new
      end
  end

  private
    def user_params
      params.require(:user).permit(:username, :password)
    end 

end
