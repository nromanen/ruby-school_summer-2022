require './classes/first_task/student'

class RetakeStudent < Student
  def initialize(name)
    super
  end

  def add_mark(mark)
    if exists?(mark.subject)
      @marks.each_with_index do|item, index|
        if item.subject == mark.subject
          @marks[index].value = mark.value
          return 
        end
      end
    end

    super
  end
end
