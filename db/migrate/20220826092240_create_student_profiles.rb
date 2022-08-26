class CreateStudentProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :student_profiles do |t|
      t.references :user, index: true
      t.string :surname
      t.integer :roll_number
      t.integer :admisssion_number
      t.integer :university_reg_number
      t.string :father_name
      t.string :mother_name
      t.integer :parent_phone
      t.integer :a_day
      t.integer :a_month
      t.integer :a_year
      t.text :admisssion_quota
      t.string :campus_type
      t.string :religion
      t.string :caste
      t.string :category
      t.string :nationality
      t.string :state
      t.string :district
      t.string :taluk
      t.string :website
      t.string :linkedin
      t.string :github

      t.timestamps
    end
  end
end
