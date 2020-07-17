class StudentsController < ApplicationController
    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def show
        @student = current_student
    end

    def edit
        @student = current_student
    end

    def update
        @student = current_student
        @student.update(student_params)
        redirect_to student_path(@student)
    end

    private

    def student_params
        params.require(:student).permit!
    end

    def current_student
        Student.find(params[:id])
    end
end
