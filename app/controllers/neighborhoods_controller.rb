class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all
    @user10 = User.find(10)
    @user11 = User.find(11)
    @listing52 = Listing.find(52)
    @listing59 = Listing.find(59)
    @listing61 = Listing.find(61)
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
  end

  # def new
  #   @neighborhood = Neighborhood.new
  # end
  #
  # def create
  #   @neighborhood = Neighborhood.new(neighborhood_params)
  #   if @neighborhood.save
  #     flash[:notice] = "Neighborhood successfully saved!"
  #     redirect_to neighborhoods_path
  #   else
  #     render :new
  #   end
  # end
  #
  # def edit
  #   @neighborhood = Neighborhood.find(params[:id])
  # end
  #
  # def update
  #   @neighborhood = Neighborhood.find(params[:id])
  #   if @neighborhood.update(neighborhood_params)
  #     redirect_to neighborhoods_path
  #   else
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #   @neighborhood = Neighborhood.find(params[:id])
  #   @neighborhood.destroy
  #   redirect_to neighborhoods_path
  # end

  private
  def neighborhood_params
    params.require(:neighborhood).permit(:name, :quadrant, :address, :latitude, :longitude)
  end
end
