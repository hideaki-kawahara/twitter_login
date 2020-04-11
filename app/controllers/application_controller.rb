class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  #登録時と編集時に独自カラムのストロングパラメータ追加
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: %i(name uid image provider))
      devise_parameter_sanitizer.permit(:account_update, keys: %i(name uid image provider))
    end
end
