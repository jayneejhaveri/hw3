class PlacesController < ApplicationController
  def index
    @places = Place.all 
    # find all place rows
    # render companies/index view
  end

   def show
     # find a place
     @place = Place.find_by({ "id" => params["id"] })
     # render companies/show view with details about place
   end

   def new
   # render view with new place form
   @place = Place.new
    # render posts/new view with new Post form
   end

  def create
     # start with a new place
     @place = Place.new
     # assign user-entered form data to Place's columns
     @place["name"] = params["name"]
     @place["created_at"] = params["created_at"]
     @place["updated_at"] = params["upadted_at"]
     # save Place row
     @Place.save
     # redirect user
     redirect_to "/places"
   end
end
