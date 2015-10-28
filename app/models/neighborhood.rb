class Neighborhood < ActiveRecord::Base
  has_many :listings, as: :listingable
  
  validates :name, :presence => true
  validates :quadrant, :presence => true
end
