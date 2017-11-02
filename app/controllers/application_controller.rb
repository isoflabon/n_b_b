class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  # before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user! , except: [:show,:index]
  protect_from_forgery with: :exception
  before_action :set_current_user
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      added_attrs = [ :username, :email, :password, :password_confirmation ]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
      devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    end

    def set_current_user
      # セッションから得られたユーザーを現在のユーザ(@current_user)とする
      @current_user = User.find_by(id: session[:user_id])
    end


    def configure_permitted_params
      devise_parameter_sanitizer.for(:sign_up) {
        |u| u.permit(:email, :password, :gender, :username)
      }
end

end
