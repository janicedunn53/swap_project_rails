class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def show
    @user = User.find(params[:user_id])
    @listing = Listing.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @listing = @user.listings.new
  end

  def create
    @user = User.find(params[:user_id])
    @listing = @user.listings.new(listing_params)
    if @listing.save
      flash[:notice] = "Item successfully saved!"
      redirect_to user_path(@listing.user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @listing = @user.listings.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @listing = @user.listings.find(params[:id])
    if @listing.update(listing_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
      redirect_to user_path(params[:user_id])
  end

  private
  def listing_params
    params.require(:listing).permit(:name, :description, :photo)
  end
end
