class Neighborhood < ActiveRecord::Base
  has_many :users

  geocoded_by :address
  after_validation :geocode

  validates :name, :presence => true
  validates :quadrant, :presence => true
  validates :address, :presence => true
end
