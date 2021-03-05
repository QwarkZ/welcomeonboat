class ApplicationController < ActionController::Base

    before_action :authenticate_user!

    before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

  def pending_count
    @current_user = User.find(current_user.id)
    @owner_bookings = Booking.joins(:boat).where("owner_id = ?", current_user.id).where("start_date > ?", Time.now).where("booking_status = ?", "En attente")
    @renter_bookings = Booking.joins(:boat).where("renter_id = ?", current_user.id).where("start_date > ?", Time.now).where("booking_status = ?", "En attente")
    count = {all: @owner_bookings.count + @renter_bookings.count, renter: @renter_bookings.count, owner: @owner_bookings.count}
  end
  helper_method :pending_count
end



#<ActiveRecord::Relation [#<Booking id: 35, renter_id: 24, boat_id: 28, start_date: "2021-02-06", end_date: "2021-03-10", booking_status: "En attente", created_at: "2021-03-04 16:45:39.438079000 +0000", updated_at: "2021-03-04 16:45:39.438079000 +0000">, #<Booking id: 41, renter_id: 27, boat_id: 28, start_date: "2021-02-03", end_date: "2021-02-17", booking_status: "En attente", created_at: "2021-03-04 21:22:10.071191000 +0000", updated_at: "2021-03-04 21:22:10.071191000 +0000">]>
