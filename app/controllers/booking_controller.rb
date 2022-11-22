class BookingController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
  end

  def create
  end

  def status?
  end


end
