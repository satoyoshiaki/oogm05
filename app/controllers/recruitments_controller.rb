class RecruitmentsController < ApplicationController
    before_action :set_recruitment, only: [:show, :edit, :update, :destroy]
      def index
        @recruitments = Recruitment.all
        # @recruitment = Recruitment.new
        @recruitment = current_user.recruitments.build

        if params[:search].present?
            if params[:game_title].present? and params[:play_now].present?
              @recruitments = @recruitments.game_title_search params[:game_title]
              @recruitments = @recruitments.play_now_search params[:play_now]
            elsif params[:game_title].present?
              @recruitments = @recruitments.game_title_search params[:game_title]
            elsif params[:play_now].present?
              @recruitments = @recruitments.play_now_search params[:play_now]
            end
        end

      end
      def create
        @recruitment = current_user.recruitments.build(recruitment_params)
        # @recruitment = Recruitment.new(recruitment_params)
        if @recruitment.save
          redirect_to recruitments_path, notice: "募集を作成しました！"
        else
          render :edit
        end
      end

      def show
        @favorite = current_user.favorites.find_by(recruitment_id: @recruitment.id)
      end

      def edit
      end

      def update
        if @recruitment.update(recruitment_params)
          redirect_to recruitments_path, notice: "募集を編集しました！"
        else
          render :edit
        end
      end

      def destroy
        @recruitment.destroy
        redirect_to recruitments_path, notice:"募集を削除しました！"
      end

      def favorites_index
        @user = User.find(params[:id])
        @recruitment = Recruitment.where(user_id: @user.id)
      end

      private
      def recruitment_params
        params.require(:recruitment).permit(:play_now, :game_title, :comment, :machine, :image, :image_cache, :on_off, :purpouse )
      end

      # idをキーとして値を取得するメソッドを追加
      def set_recruitment
        @recruitment = Recruitment.find(params[:id])
      end
end
