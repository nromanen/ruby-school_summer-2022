require './classes/first_task/mark'
require './classes/first_task/student'

mark = Mark.new('C++', 5)
mark1 = Mark.new('Java', 4)
mark2 = Mark.new('Python', 3)
mark3 = Mark.new('Javascript', 5)

student = Student.new('Alex Kysorets')

student.add_mark(mark)
student.add_mark(mark1)
student.add_mark(mark2)
student.add_mark(mark3)

puts student

puts student.exists?('Math')
