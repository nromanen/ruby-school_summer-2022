class Mark
    attr_reader :subject
    attr_accessor :val
    def initialize(subject, val)
        @subject = subject
        @val = val.to_i
    end

    def to_s()
        "#{@subject}: #{@val}"
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

   def add_mark!(new_mark)
        marks.append(new_mark) unless exists?(new_mark.subject)
   end

   def to_s()
    "Student #{name}: #{marks.map{|mark| mark.val}.join(", ")}"
   end
end

class StudentImproved < Student
    attr_reader :name
    attr_accessor :marks
    def index_of(subject_title)
        marks.each_with_index{|mark, index| return index if subject_title == mark.subject}
        -1
       end
    def add_mark!(new_mark)
    if exists?(new_mark.subject)
        marks[index_of(new_mark.subject)].val = new_mark.val
    else
        marks.append(new_mark)
    end
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
    js = Mark.new("JS", 5),
    js2 = Mark.new("JS", 4)
]

Peter = Student.new("Peter")
marks.each{|mark| Peter.add_mark!(mark)}
p Peter.to_s

John = StudentImproved.new("John")
marks.each{|mark| John.add_mark!(mark)}
p John.to_s