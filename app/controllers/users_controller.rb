class UsersController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: :index

  def about
    @users = User.all
    authorize @users 
  end

  def index
    @users = User.all
    authorize admin
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    user = User.find(params[:id])
    authorize admin
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end
  private

  def secure_params
    params.require(:user).permit(:role)
  end

end
