class UserBuildingsController < ApplicationController

  def destroy
    UserBuilding.find(params[:id]).destroy
    redirect_to @user
  end

end
