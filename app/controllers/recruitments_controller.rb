class RecruitmentsController < ApplicationController
    before_action :set_recruitment, only: [:show, :edit, :update, :destroy]
      def index
        @recruitments = Recruitment.all
        @recruitment = Recruitment.new
        # @recruitment = current_user.recruitments.build
      end
      def create
        # @recruitment = current_user.recruitments.build(recruitment_params)
        @recruitment = Recruitment.new(recruitment_params)
        if @recruitment.save
          redirect_to recruitments_path, notice: "募集を作成しました！"
        else
          render :edit
        end
      end
      def show
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
      private
      def recruitment_params
        params.require(:recruitment).permit(:play_now, :game_title, :comment, :machine, :image, :on_off, :purpouse )
      end
      # idをキーとして値を取得するメソッドを追加
      def set_recruitment
        @recruitment = Recruitment.find(params[:id])
      end
end
