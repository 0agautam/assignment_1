class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[show edit update destroy]
  
  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create 
    @employee = Employee.new(employee_params)
    respond_to do |format|
      if @employee.save 
        format.html {redirect_to @employee, notice: "Employee Added successfuly"}
      else
        format.html {render :new}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html {redirect_to @employee, notice: "Employee Updated successfuly"}
      else
        format.html {render :edit}
      end
    end
  end

  def destroy
    @employee.destroy
    respond_to do |format|
      format.html {redirect_to employees_path, notice: "Employee Deleted successfuly"}
    end
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:name, :email, :dob)
  end 
end
