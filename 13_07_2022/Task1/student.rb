class Student
  attr_accessor :marks

  def initialize(name)
    @name = name
    @marks = Array.new
  end

  def exists?(subject_title)
    @marks.select { |el| el.subject_name.eql?(subject_title) }.length != 0
  end

  def add_mark(mark)
    unless mark.instance_of? Mark
      return
    end

    if exists?(mark.subject_name)
      @marks.reject! { |elem| elem.subject_name.eql?(mark.subject_name)  }
    end

    @marks.push(mark)
  end

  def to_s
    "----Student----\n" +
      "#{@name}, marks: #{@marks.map { |el| el.to_s }}\n"
  end

end