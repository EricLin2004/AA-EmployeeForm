class CreateTeamSupervisors < ActiveRecord::Migration
  def change
    create_table :team_supervisors do |t|
      t.integer :employee_id
      t.integer :team_id

      t.timestamps
    end
  end
end
