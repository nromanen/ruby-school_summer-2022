require_relative '../task_1/student'

class RetakeStudent < Student
  def add_mark(mark)
    return unless mark.instance_of? Mark

    if exists?(mark.subject)
      @marks.find { |el| el.subject == mark.subject }.value = mark.value
    else
      @marks.push(mark)
    end
  end
end
