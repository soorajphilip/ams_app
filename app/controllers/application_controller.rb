class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	protect_from_forgery with: :exception

	private

	def after_sign_in_path_for(resource)
    s_dashboard_path
  end

  def after_sign_out_path_for(resource)
    new_user_session_path
	end
end
