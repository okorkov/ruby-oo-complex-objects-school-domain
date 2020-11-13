class School
    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new
    end 
    def roster
        @roster
    end
    def add_student(name, grade)
        if @roster.key?(grade)
            @roster[grade] << name
        elsif @roster.key?(grade) == false
            @roster[grade] = [name]
        end
    end
    def grade(grade)
       @roster[grade]
    end
    def sort
        @roster.map do |key, value|
            @roster[key].sort! { |a, b| a <=> b }
        end
        @roster.sort_by {|k, v| k}.to_h
    end
end

