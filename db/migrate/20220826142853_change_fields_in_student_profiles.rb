class ChangeFieldsInStudentProfiles < ActiveRecord::Migration[6.1]
  def change
    change_column :student_profiles, :parent_phone, :integer, limit: 8
    change_column :student_profiles, :admisssion_number, :string
    change_column :student_profiles, :university_reg_number, :string
  end
end
