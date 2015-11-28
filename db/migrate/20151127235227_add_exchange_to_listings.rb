class AddExchangeToListings < ActiveRecord::Migration
  def change
    add_column :listings, :exchange_type, :string
  end
end
