class ApplicationController < ActionController::Base
  before_action :authenticate_user!
    protect_from_forgery with: :exception

    # ログイン済ユーザーのみにアクセスを許可する
    def after_sign_in_path_for(resource)
      recruitments_path
    end

    # deviseコントローラーにストロングパラメータを追加する
    before_action :configure_permitted_parameters, if: :devise_controller?


    protected
    def configure_permitted_parameters
      # サインアップ時にnameのストロングパラメータを追加
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      # アカウント編集の時にnameとcommentのストロングパラメータを追加
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :comment, :icon])
    end
end
