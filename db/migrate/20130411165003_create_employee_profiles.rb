class CreateEmployeeProfiles < ActiveRecord::Migration
  def change
    create_table :employee_profiles do |t|
    	t.string :name
    	
      t.timestamps
    end
  end
end
