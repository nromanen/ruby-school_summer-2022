require_relative '../Task1/student.rb'

class RetakeStudent < Student

  def initialize(name)
    super
  end

  def add_mark(mark)
    unless mark.instance_of? Mark
      return
    end

    if exists?(mark.subject_name)
      @marks.reject! { |elem| elem.subject_name.eql?(mark.subject_name)  }
    end

    super
  end

end