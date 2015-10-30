class Users::ListingsController < ListingsController
  before_action :set_listingable

  private

    def set_listingable
      @listingable = User.find(params[:user_id])
    end
end
