require_relative 'mark.rb'
require_relative 'student.rb'

cpp_mark = Mark.new('C++', 3)
html_mark = Mark.new('html', 4)
java_mark = Mark.new('Java', 5)
sql_mark = Mark.new('SQL', 5)
js_mark = Mark.new('JavaScript', 2)
ruby_mark = Mark.new('Ruby', 4)
history_mark = Mark.new('History', 1)
updated_js_mark = Mark.new('JavaScript', 4)

puts cpp_mark, html_mark, java_mark, sql_mark, js_mark, ruby_mark, history_mark

student = Student.new('Andrey Viglush')

puts student

student.add_mark(cpp_mark)
student.add_mark(html_mark)
student.add_mark(java_mark)
student.add_mark(sql_mark)
student.add_mark(js_mark)
student.add_mark(ruby_mark)
student.add_mark(history_mark)

puts student

student.add_mark(updated_js_mark)

puts student

puts student.exists?('SQL')
puts student.exists?('Algebra')
