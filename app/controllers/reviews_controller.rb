class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
    @markers = @bunkers.geocoded.map do |bunker|
      {
        lat: bunker.latitude,
        lng: bunker.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bunker: bunker })
      }
    end
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.bunker = Bunker.find(params[:bunker_id])
    if @review.save
      redirect_to bunker_path(params[:bunker_id])
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to review_path(@review)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
