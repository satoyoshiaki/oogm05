class FavoritesController < ApplicationController
    def create
        favorite = current_user.favorites.create(recruitment_id: params[:recruitment_id])

        redirect_to recruitments_url
      end
      def destroy
        favorite = current_user.favorites.find_by(id: params[:id]).destroy
        redirect_to recruitments_url
      end
end
