class ArchitectsController < ApplicationController

  def index
    @architects = Architect.all
  end

  def show
    @architect = Architect.find(params[:id])
  end
end
