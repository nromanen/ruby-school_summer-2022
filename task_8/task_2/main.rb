require_relative '../task_1/mark'
require_relative 'retake_student'

mark1 = Mark.new('English', 5)
mark2 = Mark.new('English', 2)

student = RetakeStudent.new('Anna')

student.add_mark(mark1)
student.add_mark(mark2)

puts student