class EmployeeDetails < ActiveRecord::Migration
  def change
  	add_column :employee_profiles, :salary, :decimal, :precision => 10, :scale => 2
  	add_column :employee_profiles, :position, :string
  	add_column :employee_profiles, :email, :string
  end
end
