class StudentsController < ApplicationController

  def index
    if params[:name]
      param_name = params[:name].capitalize
      students = Student.where(last_name: param_name).or(Student.where(first_name: param_name))
    elsif
      students = Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render(json: student)
  end

end
