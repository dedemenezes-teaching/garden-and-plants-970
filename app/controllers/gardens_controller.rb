class GardensController < ApplicationController
  def show
    @garden = Garden.find(params[:id])
    @plant = Plant.new # we need to instantiate this Plant to display the form in this action view
  end
end
