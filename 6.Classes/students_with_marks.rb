class Mark
    attr_reader :subject, :mark
    def initialize(subject, mark)
        @subject = subject
        @mark = mark.to_i
    end

    def to_s()
        "#{@subject}: #{@mark}"
    end
end

class Student
    attr_reader :name, :marks
    def initialize(name, *marks)
        @name = name
        @marks = marks
    end

   def exists?(subject_title)
    marks.each{|mark| return true if subject_title == mark.subject}
    false
   end

   def add_mark(new_mark)
        marks.append(new_mark) unless self.exists?(new_mark)
   end

   def to_s()
    "Student #{name}: #{marks.map{|mark| mark.mark}.join(", ")}"
   end
end

marks = [
    c = Mark.new("C", 5),
    cpp = Mark.new("C++", 5),
    cs = Mark.new("C#", 5),
    java = Mark.new("Java", 5),
    python = Mark.new("Python", 5),
    php = Mark.new("PHP", 5),
    go = Mark.new("GO", 5),
    js = Mark.new("JS", 5)
]

Peter = Student.new("Peter")
marks.each{|mark| Peter.add_mark(mark)}
p Peter.to_s