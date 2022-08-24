class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

	private

	def after_sign_out_path_for(resource)
    new_user_session_path
	end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :current_password])
  end
end
