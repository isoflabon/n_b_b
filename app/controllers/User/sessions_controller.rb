class User::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  #
  # # GET /resource/sign_in
  def new
    redirect_to("/")
  end
  #
  # # POST /resource/sign_in
  def create
    redirect_to("/")
  end
  #
  # # DELETE /resource/sign_out
  # def destroy
  #   super
  #   session[:user_id] = nil
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
