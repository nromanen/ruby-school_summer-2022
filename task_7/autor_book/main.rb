require_relative 'book.rb'

author_1 = Author.create('Еріх', 'Марія', 'Ремарк')
author_1_copy = Author.create('Еріх', 'Марія', 'Ремарк')
author_2 = Author.create('Сергій', 'Жадан')


book_1 = Book.new('Повернення', 'Інтернет', 2022)
book_2 = Book.new('Інтернат', 'Інтернет', 2017)

puts Author.to_s
puts book_1
puts book_2

book_1.add_author(author_1)
book_1.add_author(author_1)
book_2.add_author(author_2)

puts book_1
puts book_2