class Student::AssignmentsController < ApplicationController
  layout 'student'
  before_action :set_current_user

  def index
  end

  private

  def set_current_user
    @user = current_user
  end
end
