class DashboardController < ApplicationController
  def index
    @my_boats = Boat.where("owner_id = ?", current_user.id)
    @my_bookings = Booking.joins(:boat).where("renter_id = ?", current_user.id)
    @people_rentings = Booking.joins(:boat).where("owner_id = ?", current_user.id)
  end

end
