class Mark
  attr_reader :subj
  attr_accessor :val
  def initialize(subj, val)
    @subj = subj
    @val = val.to_i
  end

  def to_s()
    "#{@subj}: #{@val}"
  end
end

class Student
  attr_reader :name, :marks
  def initialize(name, *marks)
    @name = name
    @marks = marks
  end

  def exists?(subj_title)
    marks.each{|mark| return true if subj_title == mark.subj}
    false
  end

  def add_mark(new_mark)
    marks.append(new_mark) unless exists?(new_mark.subj)
  end

  def to_s()
    "Student #{name}: #{marks.map{|mark| mark.val}.join(", ")}"
  end
end

marks = [
  c = Mark.new("C", 5),
  c = Mark.new("C", 3),
  cs = Mark.new("C#", 4),
  dotnet = Mark.new(".Net", 3),
  python = Mark.new("Python", 5)
]

Max = Student.new("Max")
marks.each{|mark| Max.add_mark(mark)}
p Max.to_s