class AddColProfile < ActiveRecord::Migration
  def change
  	add_column :employee_profiles, :height, :integer
	add_column :employee_profiles, :age, :integer
	add_column :employee_profiles, :favorite_food, :string
	add_column :employee_profiles, :favorite_day, :datetime
	add_column :employee_profiles, :birth_date, :datetime
    add_column :employee_profiles, :photo_file_name, :string # Original filename
    add_column :employee_profiles, :photo_content_type, :string # Mime type
    add_column :employee_profiles, :photo_file_size, :integer 
    add_column :employee_profiles, :photo_updated_at, :datetime
  end
end
