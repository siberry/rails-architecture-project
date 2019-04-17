class BuildingsController < ApplicationController
#  before_action :require_logged_in
  def index
    @buildings = Building.all.shuffle
  end

  def show
    @building = Building.find(params[:id])
  end
end
