class BoatsController < ApplicationController
  def new
    # /owner/boats/new
    @user = User.find(5)
    @boat.owner = @user
    @boat = Boat.new
  end

  def create
    # /owner/boats
    @boat = Boat.new(boat_params)
    @boat.save
    redirect_to boat_path(@boat)
  end

  private

  def boat_params
    params.require(:boat).permit(:title, :category, :address, :price_per_day, :description)
  end
end
