class Entry < ApplicationRecord
  # talks to the "posts" table
  Entry.destroy_all

 
  # create input for Peru
  eating = Entry.new
eating["title"] = "Lunch"
eating["description"] = "Had tacos for luncg at Del-Lala"
eating["posted_on"] = "12-24-2023"
eating.save
end
