class BookingController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bunker = @bunker
    @booking.user = current_user
    if @booking.save
      redirect_to bunkers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

private

  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date, :bunker_id, :user_id)
  end
end
