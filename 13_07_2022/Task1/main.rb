require_relative 'mark.rb'
require_relative 'student.rb'

cpp_mark = Mark.new('C++', 5)
ruby_mark = Mark.new('Ruby', 4)
java_mark = Mark.new('Java', 3)
history_mark = Mark.new('History', 2)
updated_history_mark = Mark.new('History', 1)

puts cpp_mark, ruby_mark, java_mark, history_mark, updated_history_mark

student = Student.new('Nazar Palijchuk')

puts student

student.add_mark(cpp_mark)
student.add_mark(ruby_mark)
student.add_mark(java_mark)
student.add_mark(history_mark)
student.add_mark(history_mark)
student.add_mark("Random garbage")

puts student

student.add_mark(updated_history_mark)

puts student

puts student.exists?('C++') #expected true
puts student.exists?('Lol') #expected false

