require_relative 'retake_student.rb'
require_relative '../Task1/mark.rb'

history_mark = Mark.new('History', 2)
updated_history_mark = Mark.new('History', 1)

puts history_mark, updated_history_mark

student = RetakeStudent.new('Nazar Palijchuk')

puts student

student.add_mark(history_mark)
student.add_mark(history_mark)
student.add_mark("Random garbage")

puts student

student.add_mark(updated_history_mark)

puts student