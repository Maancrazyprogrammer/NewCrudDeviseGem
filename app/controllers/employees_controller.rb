class EmployeesController < ApplicationController
  load_and_authorize_resource
    def index
        @employees=Employee.all
    end
    def new
      @employee = Employee.new
    end

    def create
        @employee = Employee.new(employee_params)

      if @employee.save
      redirect_to employees_path, notice: 'Employee has been created successfully!'
      else
      render :new
      end
    end

      def edit
        @employee = Employee.find(params[:id])
        end
      
      def update
        @employee = Employee.find(params[:id])
        if @employee.update(employee_params)
          redirect_to employees_path, notice: 'Employee has been updated successfully'
        else
          render :edit
          end
        end
      def show
        @employee = Employee.find(params[:id])

        end
      
        def destroy
        @employee = Employee.find(params[:id])
        if @employee.destroy
          redirect_to employees_path, notice: 'Employee has been Delete successfully'
        end


          end
      private

      def employee_params
        params.require(:employee).permit(:first_name, :last_name,:email,:password,:confirm_password,:country)
    end 
 end
 
  