class Users::RegistrationsController < Devise::RegistrationsController
  layout 'student', only: %i[edit]
  before_action :configure_permitted_parameters

  def edit
    @current_user = current_user
  end

  protected

  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :name, :avatar)}
     devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:avatar, :email, :password, :current_password, :name)}
  end
end
