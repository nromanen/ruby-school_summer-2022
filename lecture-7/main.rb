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

pizza = Pizza.new(1, 24, [])
p pizza

pizza2 = Pizza.new(2, 25, [])
p pizza2
p pizza.failInstance
p pizza2.totalInstance