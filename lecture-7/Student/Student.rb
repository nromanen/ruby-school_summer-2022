require './lecture-7/Student/Mark'

class Student

  protected

  attr_reader :marks, :name

  public

  def initialize(name, marks = [])
    @name = name
    @marks = marks
  end

  def exists?(subject_title)
    @marks.each { |el|
      if el.subject == subject_title
        return true
      end
    }
    false
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