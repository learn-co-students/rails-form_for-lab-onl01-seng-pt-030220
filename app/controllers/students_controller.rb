class StudentsController < ApplicationController
  before_action :get_student, except: [:create, :index]

  def new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def show
  end

  def edit
  end

  def update
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private

  def student_params
    params.require(:student).permit!
  end

  def get_student
    @student = !!params[:id] ? Student.find(params[:id]) : Student.new
  end

end