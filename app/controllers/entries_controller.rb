class EntriesController < ApplicationController
  
   def show
     # find a activity
     @entry = Entry.find_by({ "id" => params["id"] })
     @place = Place.find_by({"id" => @entry["place_id"]})
     # render companies/show view with details about place
   end

   def new
   # render view with new place form
   @place = Place.find_by({"id" => @entry["place_id"]})
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
     @entry["created_at"] = params["created_at"]
     @entry["updated_at"] = params["updated_at"]

         # assign relationship between Contact and Company
     @entry["place_id"] = params["place_id"]
     # save Place row
     @Entry.save

     # redirect user
     redirect_to "/places/#{@entry["place_id"]}"
   end
end
