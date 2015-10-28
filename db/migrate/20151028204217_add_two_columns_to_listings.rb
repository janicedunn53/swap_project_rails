class AddTwoColumnsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :listingable_id, :integer
    add_column :listings, :listingable_type, :string
  end
end
