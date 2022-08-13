require_relative '..\task_01(Mark)\student.rb'

class RetakeStudent < Student

  def initialize(name)
    super
  end

  def add_mark(mark)
    unless mark.instance_of? Mark
      return
    end

    if exists?(subject_name)
      @marks.reject! { |elem| elem.subject_name.eql?(mark.subject_name)  }
    end
    super
  end

end