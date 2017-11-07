class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  # before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user! , except: [:show,:index]
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

    def configure_permitted_parameters
      added_attrs = [ :username, :email, :password, :password_confirmation, :gender ]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
      devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    end

    # 男性は悩みの投稿のみ、女性はコメントのみできるようにする
    def male_forbid
      if current_user.gender == "male"
        flash[:notice] = "男性は悩みのみ投稿できます"
        redirect_to("/")
      end
    end

    def female_forbid
      if current_user.gender == "female"
        flash[:notice] = "女性はコメントのみできます"
        redirect_to("/")
      end
    end


    def configure_permitted_params
      devise_parameter_sanitizer.for(:sign_up) {
        |u| u.permit(:email, :password, :gender, :username)
      }
    end

end
