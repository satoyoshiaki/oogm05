class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all.order(id: "DESC").page(params[:page]).per(40)
  end
  private
  def feed_params
    params.require(:user).permit(:icon, :image, :image_cache)
  end
end
