class BunkersController < ApplicationController

  def index
    if params[:query].present?
      sql_query = "location ILIKE :query OR summary ILIKE :query"
      @bunkers = Bunker.where(sql_query, query: "%#{params[:query]}%")
    else
      @bunkers = Bunker.all
    end

    @markers = @bunkers.geocoded.map do |bunker|
      {
        lat: bunker.latitude,
        lng: bunker.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bunker: bunker })
      }

    end
  end

  def show
    @review = Review.new
    @booking = Booking.new
    @bunker = Bunker.find(params[:id])
    @markers = @bunker.geocode.map do
      {
        lat: @bunker.latitude,
        lng: @bunker.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bunker: @bunker })
      }
    end
  end

  def new
    @bunker = Bunker.new
  end

  def create
    @bunker = Bunker.new(bunker_params)
    @bunker.user = current_user
    if @bunker.save
      redirect_to profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bunker = Bunker.find(params[:id])
    @bunker.destroy
    redirect_to profile_path
  end

private

  # def set_user
  #   @user = User.find(params[:user_id])
  # end

  def bunker_params
    params.require(:bunker).permit(:location, :title, :description, :price, :feature, :summary, :photo, :user_id)
  end

end
