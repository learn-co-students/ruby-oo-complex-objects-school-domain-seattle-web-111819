class School

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        if roster[grade] == nil
            roster[grade] = []
        end
        return roster[grade] << name
    end

    def grade(grade)
        return roster[grade]
    end

    def roster
        @roster
    end

    def sort
        roster.each {|grade, name| roster[grade] = name.sort}
    end


end