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
      # @employee.save
      # redirect_to employee_path(@employee)
  end

  def edit
    @employee = Employee.find(params[:id])
    # redirect_to employee_path(@employee)
  end


  # def update
  #   @employee = Employee.find(params[:id])
  #   @employee.update(first_name: params[:employee][:first_name], last_name: params[:employee][:last_name],
  #     alias: params[:employee][:alias], title: params[:employee][:title], office: params[:employee][:office], 
  #     dog_id: params[:employee][:dog_id] )
  #   redirect_to employee_path(@employee)
  # end

  private

  def employee_params
      params.require(:employee).permit(:first_name,:last_name,:alias,:title, :office, :dog_id)
  end
end

# .string "first_name"
#     t.string "last_name"
#     t.string "alias"
#     t.string "title"
#     t.string "office"
#     t.string "img_url"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.integer "dog_id"
  
