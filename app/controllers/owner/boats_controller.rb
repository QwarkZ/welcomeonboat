class Owner::BoatsController < ApplicationController
  def new
    # /owner/boats/new
    @boat = Boat.new
  end

  def create
    # /owner/boats
    @boat = Boat.new(boat_params)
    @user = User.find(params[:id])
    raise
    @boat.owner = @user
    @boat.save
    redirect_to boat_path(@boat)
  end

  private

  def boat_params
    params.require(:boat).permit(:title, :category, :address, :price_per_day, :description)
  end
end
