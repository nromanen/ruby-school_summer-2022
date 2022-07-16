require_relative 'Mark.rb'
require_relative 'Student.rb'
require_relative 'RetakeStudent.rb'

mark1 = Mark.new('C++', 5)
mark2 = Mark.new('C+++', 5)
mark3 = Mark.new('C', 4)
mark4 = Mark.new('Java', 1)
mark4_2 = Mark.new('Java', 5)

puts "~~~~~~~~~~~~~1~~~~~~~~~~~~~~"

student = Student.new('Student')

student.add_mark(mark1)
student.add_mark(mark2)
student.add_mark(mark3)
student.add_mark(mark4)

puts student

student.add_mark(mark4_2)

puts student

puts "~~~~~~~~~~~~~~"

puts student.exists?('C++')
puts student.exists?('C+++')
puts student.exists?('asdasda')

puts "~~~~~~~~~~~~~2~~~~~~~~~~~~~~"

new_student = RetakeStudent.new('New Student')

new_student.add_mark(mark1)
new_student.add_mark(mark2)
new_student.add_mark(mark3)
new_student.add_mark(mark4)

puts new_student

new_student.add_mark(mark4_2)

puts new_student

puts "~~~~~~~~~~~~~~"

puts new_student.exists?('C++')
puts new_student.exists?('Javarr')
puts new_student.exists?('asdasda')