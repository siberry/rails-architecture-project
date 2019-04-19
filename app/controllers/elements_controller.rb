class ElementsController < ApplicationController

  def index
    @elements = Element.all.shuffle
  end

  def show
    @element = Element.find(params[:id])
  end

end
