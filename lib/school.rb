# code here!

class School
attr_accessor :name, :roster

  def initialize(name)
    @name= name
    @roster= {}
  end

  # def roster(student, grade)
  #   @student= student
  #   @grade= grade
  # end
  
  def add_student(student_name, grade)
    #if grade already exists, only add student name to value/array
    if @roster[grade] == nil
      @roster[grade]=[student_name] #<<[student_name]
    #if grade doesn't already exist, add grade as a new key in hash and point it to empty array
    else
      @roster[grade]<<student_name
    end
  end

    def grade(grade)
      @roster[grade]
    end

    def sort
      @roster.each do |grade, student|
        student.sort!
      end
    end

end