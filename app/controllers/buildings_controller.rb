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
    @notification = nil
    if @user.valid? && !UserBuilding.find_by(building: @building, user: @user)
      @building.users << current_user
      redirect_to @building
    else
      @notification = "Log in or sign up :)" unless @user.valid?
      redirect_to @building
    end
  end
end
