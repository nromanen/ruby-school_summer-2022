require_relative 'author'
require_relative 'book'

author1 = Author.new('Joan', 'Rowling', '')
author2 = Author.new('Kate', 'Adams', 'Lian')
author3 = Author.new('Kate', 'Adams', 'Lian')

puts Author.all
puts '----------------'

book1 = Book.new('Book1', [author2], 'Edition1', 2021)
book2 = Book.new('_', [author2, author1], 'Edition1', 2021)
book3 = Book.new('Book3', [author2, author1], 'Edition1', 2021)
book4 = Book.new('Book4', [author2, author3], 'Edition1', 2021)

puts book1
puts book2
puts book3
puts book4
