class DashboardController < ApplicationController
  def index
    @my_boats = Boat.where("owner_id = ?", current_user.id)
    @my_pending_bookings = Booking.joins(:boat).where("renter_id = ?", current_user.id).where("start_date >= ?", Time.now).where("booking_status = ?", "En attente").order("start_date")
    @my_future_bookings = Booking.joins(:boat).where("renter_id = ?", current_user.id).where("start_date > ?", Time.now).where("booking_status = ?", "Validée")
    @my_other_bookings = Booking.joins(:boat).where("renter_id = ?", current_user.id).where("start_date < ?", Time.now)


    @pending_people_rentings = Booking.joins(:boat).where("owner_id = ?", current_user.id).where("start_date > ?", Time.now).where("booking_status = ?", "En attente").order(id: :desc)




    @future_people_rentings = Booking.joins(:boat).where("owner_id = ?", current_user.id).where("start_date > ?", Time.now).where("booking_status = ?", "Validée").order(id: :desc)
    @other_people_rentings = Booking.joins(:boat).where("owner_id = ?", current_user.id).where("start_date < ?", Time.now).order(id: :desc)
  end

end
