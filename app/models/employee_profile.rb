class EmployeeProfile < ActiveRecord::Base
  attr_accessible :name, :salary, :position, :email, :employee_id,
  				  :height, :favorite_food, :favorite_day, :birth_date, :age,
  				  :photo

  has_attached_file :photo
  belongs_to :employee, :class_name => "Employee", :inverse_of => :employee_profile
end
