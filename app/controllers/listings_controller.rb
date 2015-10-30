class ListingsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @listings = @listingable.listings
  end

  # def show
  #   @listing = @listingable.find(params[:id])
  # end

  def new
    @listing = @listingable.listings.new
  end

  def create
    @listing = @listingable.listings.new(listing_params)
    # @listing.user = current_user
    if @listing.save
      flash[:notice] = "You item was successfully saved!"
      redirect_to @listingable
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
