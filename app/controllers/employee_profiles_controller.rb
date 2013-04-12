class EmployeeProfilesController < ApplicationController
  def show
  	@profile = EmployeeProfile.find(params[:id])
  end
end
