class UsersController < ApplicationController

  def follows
    @user = User.find(params[:user_id])
  end

  def followers
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all.order(id: "DESC").page(params[:page]).per(40)

    if params[:search].present?
      if params[:name].present?
        @users = @users.name_search params[:name]
      end
    end
  end

  private
  def feed_params
    params.require(:user).permit(:icon, :image, :image_cache)
  end
end
