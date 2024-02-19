class Place < ApplicationRecord
  # talks to the "places" table

  # Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Place.destroy_all

 
  # create input for Peru
  peru = Place.new
peru["name"] = "Peru"
peru["created_at"] = "12-12-2023"
peru["updated_at"] = "12-24-2023"
peru.save

  # create input for Columbia
  peru = Place.new
peru["name"] = "Columbia"
peru["created_at"] = "12-08-2023"
peru["updated_at"] = "12-11-2023"
peru.save

  # create input for South Africa
  peru = Place.new
peru["name"] = "South Africa"
peru["created_at"] = "08-12-2023"
peru["updated_at"] = "08-24-2023"
peru.save

puts "There are #{Place.all.count} places."
end
