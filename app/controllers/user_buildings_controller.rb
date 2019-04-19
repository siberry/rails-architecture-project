class UserBuildingsController < ApplicationController

  def edit
    @user_building = UserBuilding.find(params[:id])
  end

  def update
    @user_building = UserBuilding.find(params[:id])
    @user_building.update(params.require(:user_building).permit(:note))
    redirect_to @user_building.user
  end

  def destroy
    UserBuilding.find(params[:id]).destroy
    redirect_to @user
  end

end
