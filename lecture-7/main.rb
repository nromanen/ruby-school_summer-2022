require './lecture-7/Student/Mark'
require './lecture-7/Student/Student'
require './lecture-7/Student/RetakeStudent'
require './lecture-7/Pizza/Pizza'
require './lecture-7/Book_author/Author'
require './lecture-7/Book_author/Book'

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

author1 = Author.new("Mish", "Devil")
author2 = Author.new("Misha", "Devil")
p author1
p author2

b = Book.new("Sdw", [author1, author2], "Sfwq", "1234")
p b