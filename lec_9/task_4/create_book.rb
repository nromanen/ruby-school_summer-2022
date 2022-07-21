require_relative 'author.rb'
require_relative 'book.rb'

auth1 = Author.add_author("John", "Tolkien", "RR")
auth1_2 = Author.add_author("John", "Tolkien", "RR")
auth2 = Author.add_author("Author", "Authorsson")
auth3 = Author.add_author("Author", "Authorsberg")
auth4 = Author.add_author("Charles", "Author")

book1 = Book.new("LOTR", "КСД", 2009)
book2 = Book.new("The Hobbit", "КСД", 2010)
book3 = Book.new("The Hobbit", "КСД", 2210)

book1.add_author(Author.find_author("John", "Tolkien", "RR"))
book2.add_author(Author.find_author("Author", "Authorsson"))

puts book1.to_s
puts book2.to_s
