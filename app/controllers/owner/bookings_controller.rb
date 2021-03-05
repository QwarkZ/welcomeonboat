class Owner::BookingsController < ApplicationController
  def index
    @current_user = User.find(current_user.id)
    @bookings = Booking.all.where(boat_id: @current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
    redirect_to booking_path(@booking)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update(options = {})
    @status = params[:booking_status]
    @booking = Booking.find(params[:id])
    @booking.booking_status = @status
    @booking.save
    redirect_to dashboard_index_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :booking_status)
  end

end
