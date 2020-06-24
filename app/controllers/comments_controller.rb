class CommentsController < ApplicationController
  def create
        @recruitment = Recruitment.find(params[:recruitment_id])
        @comment = @recruitment.comments.build(comment_params)
        @comment.user_id = current_user.id
        if @comment.save
          redirect_back(fallback_location: recruitments_path)
        else
          redirect_back(fallback_location: recruitments_path)
        end
    end
      private
      def comment_params
        params.require(:comment).permit(:content, :user_id, :recruitment_id)
      end
end
