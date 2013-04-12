class AddFkEmployeeProfile < ActiveRecord::Migration
  def change
  	add_column :employee_profiles, :employee_id, :integer
  end
end
