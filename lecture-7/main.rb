require './lecture-7/Mark'
require './lecture-7/Student'
require './lecture-7/RetakeStudent'
require './lecture-7/Pizza'

mark = Mark.new('C++', 5)
puts mark.to_s
st = Student.new('First student')
st.add_mark(mark)
puts st
mark2 = Mark.new('C++', 3)
st.add_mark(mark2)
puts st

rs = RetakeStudent.new("dsfw", [Mark.new('C++', 3)])
p rs
rs.add_mark(Mark.new('C++', 6))
p rs

pizza1 = Pizza.new(10, ['mushroom', 'cheese'])
pizza2 = Pizza.new 25, ['mushroom', 'cheese', 'cherry']
pizza3 = Pizza.new 50, ['mushroom']
pizza4 = Pizza.new 100, ['mushroom', 'cheese', 'cherry']
puts Pizza.failInstance