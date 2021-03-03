class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @boat = Boat.find(params[:boat_id])
  end

  def create
    puts "Avant NEW"
    puts "Avant NEW"
    puts "Avant NEW"
    puts "Avant NEW"
    puts "Avant NEW"
    puts "Avant NEW"
    puts "Avant NEW"
    @booking = Booking.new(booking_params)
    puts "Après NEW et avant SAVE"
    puts "Après NEW et avant SAVE"
    puts "Après NEW et avant SAVE"
    puts "Après NEW et avant SAVE"
    puts "Après NEW et avant SAVE"
    puts "Après NEW et avant SAVE"
    @booking.save
    puts "Après SAVE"
    puts "Après SAVE"
    puts "Après SAVE"
    puts "Après SAVE"
    puts "Après SAVE"
    puts "Après SAVE"
    puts "Après SAVE"
    puts "Après SAVE"
    # redirect_to renter_bookings_path(params[:id])
    redirect_to root_path
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
