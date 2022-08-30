class Student::AssignmentsController < StudentController
  before_action :set_current_user

  def index
  end

  private

  def set_current_user
    @user = current_user
  end
end
