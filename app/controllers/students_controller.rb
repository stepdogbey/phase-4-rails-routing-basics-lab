class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students__grades = Student.all
        render json: students__grades.order(grade: :desc)
    end

    def highest_grade
        # highest__grade = Student.all.maximum(:grade)
        student__info = Student.find_by(grade: Student.all.maximum(:grade))
        render json: student__info
        
    end
end
