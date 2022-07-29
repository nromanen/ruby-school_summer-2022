require_relative 'Mark.rb'

class RetakeStudent < Student
  def retake(subj_title)
    marks.each{|mark, index| return index if subj_title == mark.subj}
  end

  def add_mark(new_mark)
    if exists?(new_mark.subj)
    marks[retake(new_mark.subj)].val = new_mark.val
    else
      marks.append(new_mark)
    end
  end
end

marks = [
  c = Mark.new("C", 3),
  c = Mark.new("C", 5),
  cs = Mark.new("C#", 4),
  dotnet = Mark.new(".Net", 3),
  python = Mark.new("Python", 5)
]

ReMax = Student.new('ReMax')
marks.each{|mark| ReMax.add_mark(mark)}
p ReMax.to_s

