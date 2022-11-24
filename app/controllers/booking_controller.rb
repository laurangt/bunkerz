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
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bunker = Bunker.find(params[:bunker_id])
    if @booking.save
      @booking.status = true
      redirect_to booking_path(@booking)
    else
      redirect_to bunker_path(@bunker)
    end
  end

private

  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date, :bunker_id, :user_id)
  end
end
