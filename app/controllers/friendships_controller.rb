class FriendshipsController < ApplicationController
  def create
    if user_signed_in?
      @user = User.find(params[:friendship][:followed_id])
      current_user.follow!(@user)
    end
  end

  def destroy
    @user = Friendship.find(params[:id]).followed
    current_user.unfollow!(@user)
  end
end
