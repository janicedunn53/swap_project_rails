class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :neighborhood_id, :avatar)
  end
end
