class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end 

    def show
        @employee = Employee.find(params[:id])
    end
    
    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.create(employee_params)
        redirect_to employee_path(@employee)
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        redirect_to employee_path(@employee)
    end


    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :office, :dog_id, :img_url, :title)
    end
end
