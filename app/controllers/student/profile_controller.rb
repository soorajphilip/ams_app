class Student::ProfileController < StudentController

  def index
  	@current_user = current_user
    @blood_group = blood_groups.select { |b| b.second == "#{@current_user.blood_group}" }.first.first
  end
end
