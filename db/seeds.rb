# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

neighborhood_list = [
  [ "Sellwood", "SE", "Sellwood, Portland, OR" ],
  [ "Woodstock", "SE", "Woodstock, Portland, OR" ],
  [ "Concordia", "NE", "Concordia, Portland, OR" ],
  [ "Grant Park", "NE", "Grant Park, Portland, OR" ],
  [ "Pearl District", "NW", "Pearl District, Portland, OR" ],
  [ "Northwest Heights", "NW", "Northwest Heights, Portland, OR" ],
  [ "Goose Hollow", "SW", "Goose Hollow, Portland, OR" ],
  [ "Hillsdale", "SW", "Hillsdale, Portland, OR" ],
  [ "Kenton", "N", "Kenton, Portland, OR" ],
  [ "Overlook", "N", "Overlook, Portland, OR" ]
]

neighborhood_list.each do |name, quadrant, address|
  Neighborhood.create( name: name, quadrant: quadrant, address: address )
end
