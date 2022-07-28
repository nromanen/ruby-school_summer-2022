require './classes/second_task/retake_student'
require './classes/first_task/mark'

mark = Mark.new('C++', 5)
mark1 = Mark.new('Java', 4)
mark2 = Mark.new('Java', 3)

student = RetakeStudent.new('Alex Kysorets')
student.add_mark(mark)
student.add_mark(mark1)

puts student

student.add_mark(mark2)
puts student
