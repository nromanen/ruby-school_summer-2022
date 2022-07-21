class RetakeStudent < Student
  def initialize(name)
    super
  end

  def exists?(subject_title)
    super
  end

  def add_mark(mark)
    unless mark.instance_of? Mark
      return
    end
    if exists?(mark.subject)
      @marks.reject! { |e|
        e.subject == mark.subject
      }
      @marks.push(mark)
    else
      @marks.push(mark)
    end
  end

  def to_s
    super
  end
end
