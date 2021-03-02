class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end
  
  private

  def boat_params
    params.require(:boat).permit(:title, :category, :address, :price_per_day, :description)
  end
end
