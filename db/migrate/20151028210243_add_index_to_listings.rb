class AddIndexToListings < ActiveRecord::Migration
  def change
  end
  add_index :listings, [:listingable_type, :listingable_type]
end
