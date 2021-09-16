class BookingsController < ApplicationController

  ## Here I define the CRUD methods for my bookings

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

  def edit # this is the method get, I select the booking I want to update
    @booking = Booking.find(params[:id])
  end

  def update # this is the method patch, after selecting what I want to update, I send the input and update the data
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy # this is the method delete and it asks the user if he/she is sure of the action. When deleted, redirects to the homepage
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to new_booking_path(@booking)
  end

  private #strong params! It passes as params only the permitted keys - this prevents external intereference (hacking)

  def booking_params
    params.require(:booking).permit(:beginning, :end, :name, :email, :catering, :seats)
  end

end
