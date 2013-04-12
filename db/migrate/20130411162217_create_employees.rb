class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :supervisor_id

      t.timestamps
    end
  end
end
