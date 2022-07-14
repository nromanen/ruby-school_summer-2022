class Student
  attr_accessor :name
  attr_accessor :marks

  def initialize(name)
    @name = name
    @marks = Array.new

    @marks_instance = Mark.new("","")
  end

  def exists?(subject_title)
    @marks.select { |e|
      e.subject == subject_title
    }.length != 0
  end

  def add_mark(mark)
    unless mark.instance_of? Mark
      return
    end

    if exists?(mark.subject)
      @marks.reject! { |e|
        e.subject == mark.subject
      }
    end

    @marks.push(mark)
  end

  def to_s
    "#{@name} = #{@marks.map { |e| e.to_s }}"
  end
end
