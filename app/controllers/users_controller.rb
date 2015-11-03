class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @listingable = @user
    @listings = @listingable.listings
    @listing = Listing.new
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :neighborhood_id, :avatar)
  end
end
