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
    @owner_bookings = Booking.all.where(boat_id: @current_user, booking_status: "En attente")
    count = @owner_bookings.count
  end
  helper_method :pending_count
end
