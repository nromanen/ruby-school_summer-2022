require_relative '../mark_student/mark'
require_relative 'retake_student.rb'

js_mark = Mark.new('JavaScript', 5)
updated_js_mark = Mark.new('JavaScript', 3)

puts js_mark, updated_js_mark

student = RetakeStudent.new("Andrey Viglush")

puts student

student.add_mark(js_mark)

puts student

student.add_mark(updated_js_mark)

puts student