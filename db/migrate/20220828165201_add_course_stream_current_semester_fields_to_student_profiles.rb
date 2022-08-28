class AddCourseStreamCurrentSemesterFieldsToStudentProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :student_profiles, :course, :string
    add_column :student_profiles, :stream, :string
    add_column :student_profiles, :current_semester, :integer
  end
end
