require_relative 'mark'
require_relative 'student'

mark1 = Mark.new('JavaScript',4)
mark2 = Mark.new('Java', 4)
mark3 = Mark.new('English', 5)

student = Student.new('Anna')

student.add_mark(mark1)
student.add_mark(mark2)
student.add_mark(mark3)
student.add_mark(mark3)

puts student.exists?('C++')
puts student.exists?('Java')
