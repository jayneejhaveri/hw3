class PlacesController < ApplicationController
  def index
    @places = Place.all 
    # find all Company rows
    # render companies/index view
  end

   def show
     # find a Company
     @place = Place.find_by({"id" => params["id"]})
     # render companies/show view with details about Company
   end

   def new
   # render view with new Company form
   @place = Place.new
    # render posts/new view with new Post form
   end

  def create
     # start with a new Company
     @place = Place.new
     # assign user-entered form data to Company's columns
     @place["name"] = params["name"]
     @place["activity"] = params["activity"]
     @place["time_stamp"] = params["time_stamp"]
     # save Company row
     @Place.save
     # redirect user
     redirect_to "/places"
   end
end
