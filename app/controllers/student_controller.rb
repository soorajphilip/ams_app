class StudentController < ApplicationController
  include StudentHelper

  def index
  end

  def profile
    @current_user = current_user
    @blood_group = blood_groups.select { |b| b.second == "#{@current_user.blood_group}" }.first.first
  end
end
