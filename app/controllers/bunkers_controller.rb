class BunkersController < ApplicationController
  before_action :set_user, only: %i[new create]

  def index
    @bunkers = Bunker.all
  end

  def new
    @bunker = Bunker.new
  end

  def create
    @bunker = Bunker.new(user_params)
    @bunker.user = @user
    @bunker.save
  end

  def destroy
    @bunker = Bunker.find(params[:id])
    @bunker.destroy
  end

private

  def set_user
    @users = User.find(params[:user_id])
  end

  def user_params
    params.require(:user).permit(:location, :title, :desciption, :capacity, :price)
  end

end
