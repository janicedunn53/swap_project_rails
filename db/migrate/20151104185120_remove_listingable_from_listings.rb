class RemoveListingableFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :listingable_id, :integer
    remove_column :listings, :listingable_type, :string
  end
end
