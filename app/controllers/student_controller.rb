class StudentController < ApplicationController
  def index
  end

  def profile
    @current_user = current_user
  end

  def edit_profile
  end
end
