require_relative 'Mark.rb'
require_relative 'Student.rb'

mark1 = Mark.new('C++', 5)
mark2 = Mark.new('C+++', 5)
mark3 = Mark.new('C', 4)
mark4 = Mark.new('Java', 1)

puts mark1
puts mark2
puts mark3
puts mark4

student = Student.new('Student')

student.add_mark(mark1)
student.add_mark(mark2)
student.add_mark(mark3)
student.add_mark(mark4)

puts student

puts student.exists?('C++')
puts student.exists?('C+++')
puts student.exists?('asdasda')
