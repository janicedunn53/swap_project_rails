class RemoveIndexFromListings < ActiveRecord::Migration
  def change
  end
  remove_index(:listings, name: 'index_listings_on_listingable_id_and_listingable_type') 
end
