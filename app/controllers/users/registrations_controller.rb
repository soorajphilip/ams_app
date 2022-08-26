class Users::RegistrationsController < Devise::RegistrationsController
  layout 'student', only: %i[edit]
  before_action :configure_permitted_parameters

  def edit
    @current_user = current_user
    @current_user.build_student_profile if @current_user.student_profile.nil?
  end

  protected

  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :name)}
     devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:signature, :avatar, :email, :password,
                                                                        :password_confirmation, :current_password,
                                                                        :name, :gender, :b_day, :b_month, :b_year,
                                                                        :phone, :address, :blood_group, :aadhaar_number,
                                                                        :headline,
                                                                        student_profile_attributes: [:id, :website, :linkedin,
                                                                          :github, :surname, :roll_number, :admisssion_number,
                                                                          :university_reg_number, :father_name, :mother_name,
                                                                          :parent_phone, :a_day, :a_month, :a_year, :admisssion_quota,
                                                                          :campus_type, :religion, :caste, :category, :nationality,
                                                                          :state, :district, :taluk])}
  end
end
