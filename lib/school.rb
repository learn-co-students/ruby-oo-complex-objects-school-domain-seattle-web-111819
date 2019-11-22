# code here!
require "pry"

class School 
    
    def initialize(school_name)
        @school_name = school_name 
        @roster = {}
    end

    def add_student(student_name, student_grade)
        if @roster[student_grade] == nil 
            @roster[student_grade] = []
            @roster[student_grade] << student_name 
        elsif @roster[student_grade] != nil
            @roster[student_grade] << student_name 
        end 
    end 

    def grade(num)
        @roster[num]
    end 

    def sort
        sorted = {}
        @roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end 

    def roster
        @roster
    end 

end 










