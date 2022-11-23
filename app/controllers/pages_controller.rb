class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @user = current_user
    @bunkers = Bunker.all
  end

  # def profile
  #   @user = current_user
  #   @bunkers = current_user.bunker
  #   @bookings = current_user.booking
  # end
end
