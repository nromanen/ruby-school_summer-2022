class Student
  attr_accessor :name
  attr_accessor :marks

  def initialize(name)
    @name = name
    @marks = []
  end

  def exists?(subject_title)
    @marks.find { |el| el.subject == subject_title } ? true : false
  end

  def add_mark(mark)
    return unless mark.instance_of? Mark

    @marks.push(mark) unless exists?(mark.subject)
  end

  def to_s
    "#{@name}: #{@marks.map(&:to_s)}"
  end
end
