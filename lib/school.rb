require 'pry'
class School
    attr_accessor :name, :roster

    def initialize(name, roster={})
        @name = name
        @roster = roster
    end

    def add_student(name, grade)
        roster[grade] = [] if !roster[grade]
        roster[grade] << name 
    end

    def grade(num)
        roster[num]
    end

    def sort
        new_roster = {}
        roster.each do |grade, names|
          new_roster[grade] = names.sort
        end
        roster = new_roster
    end
end