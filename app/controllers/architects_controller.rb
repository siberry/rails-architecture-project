class ArchitectsController < ApplicationController
  def show
    @architect = Architect.find(params[:id])
  end

  def index
    @architects = Architect.all
  end
end
