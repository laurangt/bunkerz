class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking.bunker = Bunker.find(params[:bunker_id])
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bunker = Bunker.find(params[:bunker_id])
    @booking.user = current_user

    if @booking.save
      @booking.status = true
      redirect_to "/profile"
    else
      redirect_to "/bunkers/#{@booking.bunker.id}"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_path
  end
private

  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date, :guests)
  end
end
