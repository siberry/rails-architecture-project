class ArchitectsController < ApplicationController
  def show

  end

  def index
    @architects = Architect.pages
  end
end
