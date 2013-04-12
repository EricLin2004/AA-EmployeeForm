class Remove < ActiveRecord::Migration
  def change
  	remove_column :teams, :memberships
  	remove_column :teams, :members
  end
end