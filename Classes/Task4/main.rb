# encoding: UTF-8

require_relative 'book.rb'

author_1 = Author.create('Тарас', 'Шевченко', 'Григорович')
author_1_copy = Author.create('Тарас', 'Шевченко', 'Григорович')
author_2 = Author.create('Панас', 'Рудченко', 'Якович')
author_3 = Author.create('Іван', 'Рудченко', 'Якович')
author_4 = Author.create('Rudyard', 'Kipling')

book_1 = Book.new('Кобзар, збірка', 'Санкт-Петербург', 1840)
book_2 = Book.new('Future', 'Somewhere', 2900)
book_3 = Book.new('Хіба ревуть воли, як ясла повні?', 'Женева', 1880)

puts Author.to_s
puts book_1
puts book_2
puts book_3

book_1.add_author(author_1)
book_1.add_author(author_1)
book_3.add_author(author_2)
book_3.add_author(author_3)

puts book_1
puts book_3


