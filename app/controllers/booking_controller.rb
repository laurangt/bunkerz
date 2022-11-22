class BookingController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bunker_params)
    @booking.bunker = @bunker
    @booking.save
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

private

  def bunker_params
    params.require(:bunker).permit(:check_in_date, :check_out_date, :bunker_id)
  end
end
