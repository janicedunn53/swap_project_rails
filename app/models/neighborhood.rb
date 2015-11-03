class Neighborhood < ActiveRecord::Base
  has_many :listings, as: :listingable
  has_many :users

  validates :name, :presence => true
  validates :quadrant, :presence => true
end
