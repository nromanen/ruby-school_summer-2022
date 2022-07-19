require_relative 'book.rb'

author1 = Author.create_author('Еріх', 'Марія', 'Ремарк')
author1copy = Author.create_author('Еріх', 'Марія', 'Ремарк')
author2 = Author.create_author('Сергій', 'Жадан')

puts Author.to_s

book1 = Book.new('Повернення', 'Інтернет', 2022)
book2 = Book.new('Інтернат', 'Інтернет', 2017)

puts book1
puts book1

book1.add_author(author1)
book1.add_author(author1copy)
book2.add_author(author2)

puts book1
puts book2