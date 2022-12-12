class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.list_grades
        render json: students
    end

    def highest_grade
        student = Student.highest_grade
        render json: student
    end

end
