require_relative 'mark.rb'
require_relative 'student.rb'

csharp_mark = Mark.new('C#', 5)
ruby_mark = Mark.new('Ruby', 4)
java_mark = Mark.new('Java', 3)

puts csharp_mark, ruby_mark, java_mark

student = Student.new('Slava')

student.add_mark(csharp_mark)
student.add_mark(ruby_mark)
student.add_mark(java_mark)

puts student

puts student.exists?('C#')
puts student.exists?('ffffff')