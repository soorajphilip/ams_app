class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :address, :text
    add_column :users, :gender, :string
    add_column :users, :blood_group, :string
    add_column :users, :phone, :integer, limit: 8
    add_column :users, :aadhaar_number, :integer, limit: 8
    add_column :users, :b_day, :integer
    add_column :users, :b_month, :integer
    add_column :users, :b_year, :integer
    add_column :users, :headline, :string
  end
end
