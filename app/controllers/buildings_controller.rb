class BuildingsController < ApplicationController
#  before_action :require_logged_in
  def index
    @buildings = Building.all.shuffle
  end

  def show
    @building = Building.find(params[:id])
  end

  def update
    @building = Building.find(params[:id])
    @building.users << current_user
    redirect_to @building
  end
end
