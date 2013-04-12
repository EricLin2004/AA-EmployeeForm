class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :memberships
      t.integer :members

      t.timestamps
    end
  end
end
