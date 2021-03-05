class Owner::BoatsController < ApplicationController
  def new
    @boat = Boat.new
  end

  def create
    # /owner/boats
    @boat = Boat.new(boat_params)
    @user = User.find(current_user.id)
    @boat.owner = @user
    if @boat.save
      redirect_to dashboard_index_path
    else
      render :new
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:title, :category, :address, :price_per_day, :description, :photo)
  end
end
