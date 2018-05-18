class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  has_secure_password
  
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end 
end
