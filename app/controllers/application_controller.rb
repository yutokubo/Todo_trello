class ApplicationController < ActionController::Base
  # 編集
  protect_from_forgery with: :exception #クロスサイトフォージェリ(CSRF)対策

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end

end
