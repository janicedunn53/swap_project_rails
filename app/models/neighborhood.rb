class Neighborhood < ActiveRecord::Base
  validates :name, :presence => true
  validates :quadrant, :presence => true
end
