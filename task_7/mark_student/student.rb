class Student
    attr_accessor :name
    attr_accessor :marks

    def initialize(name)
        @name = name
        @marks = Array.new
    end

    def exists?(subject_title)
        @marks.select { |el| el.subject_name.eql?(subject_title) }.length != 0
    end

    def add_mark(mark)
        @marks.push(mark)
    end

    def to_s
        "#{@name}: #{@marks.map(&:to_s)}"
    end
end