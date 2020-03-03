class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end 

  def log_in
    @user = User.new 
    redirect_to @user
  end 

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end 
end


