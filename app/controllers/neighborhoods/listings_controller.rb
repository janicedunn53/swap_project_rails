class Neighborhoods::ListingsController < ListingsController
  before_action :set_listingable

  private

    def set_listingable
      @listingable = Neighborhood.find(params[:neighborhood_id])
    end
end
