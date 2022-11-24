class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
      if params[:query].present?
        sql_query = "location ILIKE :query OR summary ILIKE :query"
        @bunkers = Bunker.where(sql_query, query: "%#{params[:query]}%")
      else
        @bunkers = Bunker.all
      end
  end

  def profile
    @user = current_user
    @bunkers = Bunker.all
    @bookings = current_user.bookings
  end
end
