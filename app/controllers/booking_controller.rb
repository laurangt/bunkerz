class BookingController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking.bunker = Bunker.find(params[:bunker_id])
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @booking.bunker = Bunker.find(params[:bunker_id])
    raise
  end

  def create
    @booking.bunker = Bunker.find(params[:bunker_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    if @booking.save
      @booking.status = true
      redirect_to "/bunkers/#{@bunker.id}"
    else
      redirect_to "/bunkers/#{@bunker.id}"
    end
  end

private

  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date, :bunker_id)
  end
end
