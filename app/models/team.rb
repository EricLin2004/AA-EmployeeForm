class Team < ActiveRecord::Base
  #validate :has_a_team_member
  #validates :name, :presence => :true
  attr_accessible :supervisor_id, :name, :member_ids

  has_many :memberships, :class_name => "TeamMembership", :foreign_key => :team_id
  has_many :members, :through => :memberships, :source => :employee, :foreign_key => :employee_id

  belongs_to :supervisor, :class_name => "Employee", :inverse_of => :supervised_teams

  private
  def has_a_team_member
  	if members.empty?
  		errors[:base] << 'No members in team!'
  	end
  end
end
