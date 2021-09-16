class BookingsController < ApplicationController
  ## Here I will define the CRUD methods for my bookings

  def index # all bookings
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id]) # Here I want to select (and show) one specific booking, thus the :id key
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

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking_path
  end

  private #strong params! It passes as params only the permitted keys - this prevents external intereference (hacking)

  def booking_params
    params.require(:booking).permit(:beginning, :end, :name, :email, :catering, :seats)
  end

end
