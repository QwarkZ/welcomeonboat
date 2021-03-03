class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @boat = Boat.find(params[:boat_id])
  end

  def create
    puts booking_params
    puts booking_params

    @booking = Booking.new(booking_params)
    @booking.boat_id = params[:boat_id]
    @booking.renter = current_user
    puts @booking
    puts @booking
    puts @booking
    puts @booking
    puts @booking
    puts @booking
    puts @booking
    @booking.save
    redirect_to renter_bookings_path(@booking)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
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
