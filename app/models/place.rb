class Place < ApplicationRecord
  # talks to the "places" table
 
  # create input for Peru
  peru = Place.new
peru["name"] = "Peru"
peru["created_at"] = "12-12-2023"
peru["updated_at"] = "12-24-2023"
peru.save

puts "There are #{Place.all.count} places."
end
