class CorrectIndexToListings < ActiveRecord::Migration
  def change
  end
  add_index :listings, [:listingable_id, :listingable_type]
end
