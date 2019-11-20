# code here!
class School 
    attr_accessor :roster
      def initialize(name)
          @name = name 
          @roster = {}
      end 

      def add_student(student_name, student_grade)
        if roster[student_grade] 
           roster[student_grade] << student_name
        else 
        roster[student_grade] = []
        roster[student_grade] << student_name
        end 
      end 
      
      def grade(num)
        roster[num]
      end 

      def sort
       sorted = {}
       roster.each {|grades, students| sorted[grades] = students.sort}
       sorted
      end 

end 