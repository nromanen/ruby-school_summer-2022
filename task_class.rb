class Mark
    attr_accessor :value
    attr_reader :subject

    def initialize(subject, value)
        @subject = subject
        @value = Float(value)
    end
    
    def to_s
        "#{@subject} : #{@value}"
    end
end 

class Student 
    def initialize(name, marks = [])
        @name = name
        @marks = marks
    end

    def exists?(subject_title)
        @marks.all? {|x| x.subject != subject_title}
    end

    def add_mark(mark)
        @marks << mark if exists?(mark.subject)
    end

    def to_s
        str = "#{@name}:["
        @marks.each { |x| str+="#{x.to_s}, "} 
        str = str.slice(0, str.length-2) + "]"
    end
end

class RetakeStudent < Student
    def add_mark(mark)
        if self.exists?(mark.subject)
            @marks << mark
        else
            @marks.each { |x| x.value = mark.value if x.subject == mark.subject}
        end
    end
end



mk = [Mark.new("oop", 5), Mark.new("TIC", 5)]



st = Student.new("First", mk)



mark = Mark.new("KI", 8)

st.add_mark(mark)
puts st.to_s


rst = RetakeStudent.new("Second", mk)
puts rst.to_s

mark2 = Mark.new("KI", 9)

rst.add_mark(mark2)
puts rst.to_s