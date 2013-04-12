class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
    @employee.build_employee_profile
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    employee = Employee.find(params[:id])
    if employee.update_attributes(params[:employee])
      flash[:success] = "Employee updated!"
      redirect_to employee.employee_profile
    else
      flash[:errors] = employee.errors.full_messages
      render :edit
    end
  end

  def create
    employee = Employee.new(params[:employee])
    if employee.save
      flash[:success] = "Employee created!"
      redirect_to employee.employee_profile
    else
      flash[:errors] = employee.errors.full_messages
      redirect_to new_employee_url
    end
  end

  def destroy
  end
end
