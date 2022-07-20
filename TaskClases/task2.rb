# Class tasks 2
# Including files from task 1
require_relative 'task1'

# Initing class with parent Student
class RetakeStudent < Student
  # changing method
  def exists?(subject_title)
    existing = false
    # Iterating marks
    for i in marks
      # requirements
      if i.subject == subject_title
        marks.delete_at(i)
      end
    end
    existing
  end
end

# Testing new method ---
puts '======RETAKE_STUDENT BLOCK======'
# adding 2 marks with same description
first_mark = Mark.new('Physics', 66)
test_mark = Mark.new('Physics', 88)
puts "New Marks for testing: #{first_mark} | Tested mark - #{test_mark}"

# Creating new student for testing
new_student = RetakeStudent.new('Bernard')
puts "New student is: #{new_student}"

# adding new marks for new new student
new_student.add_mark(first_mark)
new_student.add_mark(test_mark)

#output result
puts "Student info after retake: #{new_student} \n\n"


