class ListingsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    if params[:query]
      @search = Listing.basic_search(params[:query])
      results = @search.first
      redirect_to user_listing_path(results.user, results)
    else
      @search = []
    end
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
    # @listing.user = current_user
    if @listing.save
      flash[:notice] = "Your item was successfully saved!"
      respond_to do |format|
        format.html { redirect_to neighborhood_user_path(@user.neighborhood_id, @user) }
        format.js
      end
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
      redirect_to neighborhood_user_path(@user.neighborhood_id, @user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @listing = Listing.find(params[:id])
    @listing.destroy
      # redirect_to user_path(params[:user_id])
      redirect_to neighborhood_user_path(@user.neighborhood_id, @user)
      # redirect_to root_path
  end

  private
    def listing_params
      params.require(:listing).permit(:name, :description, :photo)
    end
end
