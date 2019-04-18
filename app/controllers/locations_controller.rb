class LocationsController < ApplicationController
  def index
    @locations = Location.pages
  end

  def show
    @location = Location.find(params[:id])
  end


end
