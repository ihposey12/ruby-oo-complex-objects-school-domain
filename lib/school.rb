class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def name
        @name
    end

    def roster=(roster)
        @roster = roster
    end
    
    def roster
        @roster
    end

    def add_student(students_name, grade)
        if @roster[grade]
            @roster[grade] << students_name
        else
            @roster[grade] = [students_name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = {}
        @roster.sort.each {|grade, array_names| sorted[grade] = (array_names.sort)}
        sorted
    end
end