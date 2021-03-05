class DashboardController < ApplicationController
  def index
    @my_boats = Boat.where("owner_id = ?", current_user.id)
    @my_pending_bookings = Booking.joins(:boat).where("renter_id = ?", current_user.id).where("start_date > ?", Time.now).where("booking_status = ?", "En attente")
    @my_future_bookings = Booking.joins(:boat).where("renter_id = ?", current_user.id).where("start_date > ?", Time.now).where("booking_status = ?", "Validée")
    @my_other_bookings = Booking.joins(:boat).where("renter_id = ?", current_user.id).where("start_date < ?", Time.now)
    @pending_people_rentings = Booking.joins(:boat).where("owner_id = ?", current_user.id).where("start_date > ?", Time.now).where("booking_status = ?", "En attente")
    @future_people_rentings = Booking.joins(:boat).where("owner_id = ?", current_user.id).where("start_date > ?", Time.now).where("booking_status = ?", "Validée")
    @other_people_rentings = Booking.joins(:boat).where("owner_id = ?", current_user.id).where("start_date < ?", Time.now)
  end

end
