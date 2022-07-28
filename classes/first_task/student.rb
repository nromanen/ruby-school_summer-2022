class Student
  attr_accessor :marks

  def initialize(name)
    @marks = Array.new
    @name = name
  end

  def exists?(subject_title)
    @marks.any? { |mark| mark.subject == subject_title }
  end

  def add_mark(mark)
    @marks.push(mark)
  end

  def to_s
    "#{@name}: [#{@marks.map { |item| item.to_s}}]"
  end
end
