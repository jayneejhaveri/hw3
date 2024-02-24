class EntriesController < ApplicationController
  
   def new
   # render view with new place form
    @entry = Entry.new
    @place = Place.find_by({"id" => params["place_id"]})
    # render posts/new view with new Post form
   end

  def create
     # start with a new place
     @entry = Entry.new
     # assign user-entered form data to Activities's columns
     @entry["title"] = params["title"]
     @entry["description"] = params["description"]
     @entry["posted_on"] = params["posted_on"]
     @entry["place_id"] = params["place_id"]


         # assign relationship between Contact and Company
     @entry["place_id"] = params["place_id"]
     # save Place row
     @entry.save

     # redirect user
     redirect_to "/places/#{@entry["place_id"]}"
   end
end
