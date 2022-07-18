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
    def value
        @value
    end
    def set_value(value)
        @value = value
    end
end

class Student
    attr_reader :marks
    def initialize(nm)
        @name = nm
        @marks = []
    end
    def exist?(subject_title)
        flag = true
        @marks.each {|x| if (x.subject <=> subject_title) == 0 then flag = false end }
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

class RetakeStudent < Student
    def exist?(subject_title)
        flag = -1
        k = -1
        @marks.each {|x| k +=1
                         if (x.subject <=> subject_title) == 0 then flag = k end }
        flag       
    end

    def add_mark(mrk)
        m = mrk.subject
        if (@marks.count == 0) 
            @marks.push(mrk)
        else i = exist?(m)
            if i == -1  
                @marks.push(mrk)
            else
                @marks[i].set_value(mrk.value)
            end
        end 
    end
end

mark = Mark.new('C++',5)
mark1 = Mark.new('Python',4)
mark2 = Mark.new('Delphi',5)
mark3 = Mark.new('Python',3)

puts "result:"
stud1 = RetakeStudent.new('Student1')
puts stud1
stud1.add_mark(mark)
puts stud1
stud1.add_mark(mark1)
puts stud1
stud1.add_mark(mark2)
puts stud1
stud1.add_mark(mark3)
puts stud1
