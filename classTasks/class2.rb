class Mark
    attr_reader :subject, :value
        def initialize(subject, value)
            @subject=subject
            @value=value
        end
        def to_s()
            "#{subject} : #{value}"
        end
end
class Student
    attr_reader :marks, :name
    def initialize(name)
        @name=name
        @marks=Array.new
    end
    def exists?(subject_title)
        result=false
        for el in marks 
            if el.subject==subject_title
                 result=true
            end
        end
        result
    end
    def add_mark(mark)
        if !exists?(mark.subject)
            marks.push(mark)
        end
    end
    def to_s()
        result="#{name}, marks: ["
        marks.each{|el|  result=result+el.to_s}
        "#{result}]"
    end
end

class RetakeStudent < Student
    def exists?(subject_title)
        for i in marks
            if i.subject==subject_title
                 marks.delete(i)
            end
        end
        false
    end
end

mark = Mark.new('C++', 5)

puts mark #=> C++ : 5

st = Student.new('First student')

st.add_mark(mark)

puts st #=> St 1, marks: [C++ : 5])

mark2 = Mark.new('C++', 3)

st.add_mark(mark2)

puts st #=> St 1, marks: [C++ : 5])
mark = Mark.new('C++', 5) 
puts mark #=> C++ : 5 
mark2 = Mark.new('C++', 3)
ret = RetakeStudent.new('Oher student') 
ret.add_mark(mark) 
ret.add_mark(mark2) 
puts ret #=> Other student, marks: [C++ : 3])