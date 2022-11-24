class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @user = current_user
    @bunkers = Bunker.all
    @bookings = current_user.bookings
  end
end
