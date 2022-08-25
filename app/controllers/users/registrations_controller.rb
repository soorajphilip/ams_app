class Users::RegistrationsController < Devise::RegistrationsController
  layout 'student', only: %i[edit]
  before_action :configure_permitted_parameters

  def edit
    @current_user = current_user
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :current_password])
  end
end
