class Mark
    attr_accessor
    def initialize(subject,value)
        @subject = subject
        @value = value
    end
    def to_s
        "#{@subject} : #{@value}"
    end
    def subject
        @subject
    end
end

mark = Mark.new('C++',5)
puts mark
mark1 = Mark.new('Python',4)
mark2 = Mark.new('Delphi',5)
mark3 = Mark.new('Python',3)

class Student
    attr_reader :marks
    def initialize(nm)
        @name = nm
        @marks = []
    end
    def exist?(subject_title)
        flag = true
     #   puts ">> #{subject_title}"
        @marks.each {|x| #puts ":> #{x.subject}"
                         if (x.subject <=> subject_title) == 0 then flag = false end }
puts "flag=" + flag.to_s
        flag
    end

    def add_mark(mrk)
        m = mrk.subject
        if (@marks.count == 0) 
            @marks.push(mrk)
        elsif  exist?(m)     
             @marks.push(mrk)
        end 
    end
    def to_s
        s = @name + ', Marks:' 
        @marks.each {|x| s = s+ "["+x.to_s+"],"}
       s
    end
end

stud1 = Student.new('St1')
puts stud1
puts "result:"
stud1.add_mark(mark)
puts stud1
stud1.add_mark(mark1)
puts stud1
stud1.add_mark(mark2)
puts stud1
stud1.add_mark(mark3)
puts stud1