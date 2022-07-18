require './lecture-7/Mark'

class RetakeStudent < Student
  def add_mark(mark)
    return nil unless self.exists?(mark.subject)
    marks.each_index { |i|
      if marks[i].subject == mark.subject
        marks[i] = mark
      end
    }
  end
end