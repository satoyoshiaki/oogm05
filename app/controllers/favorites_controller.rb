class FavoritesController < ApplicationController
    def create
        favorite = current_user.favorites.create(recruitment_id: params[:recruitment_id])
        redirect_to recruitment_path(favorite.recruitment.id)

      end
      def destroy
        favorite = current_user.favorites.find_by(id: params[:id]).destroy
        redirect_to recruitment_path(favorite.recruitment.id)
      end
end
