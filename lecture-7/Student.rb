require './lecture-7/Mark'

class Student
  attr_reader :marks, :name

  def initialize(name, marks = [])
    @name = name
    @marks = marks
  end

  def exists?(subject_title)
    ex = false
    @marks.each { |el|
      if el.subject == subject_title
        ex = true
        break
      end
    }
    ex
  end

  def add_mark(mark)
    return nil if self.exists?(mark.subject)
    marks.push(mark)
  end

  def to_s
    s = "#{@name}: ["
    marks.each_index { |i| s += "#{", " if i > 0}#{marks[i].to_s}" }
    s += "]"
  end

end