def name?(name)
    name =~ /^\p{Upper}{1}\p{Lower}{0,14}$/ ? true : false
end 

def doublename?(name)
    i = name =~ /\-/
    name?(name[0...i]) and name?(name[i+1..-1]) if name =~ /\-/ ? true : false
end 

def book_or_publisher?(name)
    name =~ /^[\d\p{P}\p{Lu}\p{Ll} ]+$/ ? true : false
end 

class Author
    attr_reader :firstname, :lastname, :patronymic
    @@authors = []
    def initialize(firstname, lastname, patronymic = "")
        @firstname = firstname if name?(firstname) || doublename?(firstname)
        @lastname = lastname if name?(lastname) || doublename?(lastname)
        @patronymic = patronymic if name?(patronymic) || doublename?(patronymic)
        @@authors.append(self) unless self.exists_in_arr?(@@authors)
    end

    def to_s
        "#{@firstname} #{@lastname} #{@patronymic}"
    end

    def eql?(o)
        @firstname == o.firstname && @lastname == o.lastname && @patronymic == o.patronymic
    end

    def exists_in_arr?(authors)
        authors.each{|author| return true if self.eql?(author)}
        false
    end

    def self.uniq(authors) 
        res = []
        authors.each{|author| res.append(author) unless author.exists_in_arr?(res)}
        res
    end

    def self.author_list()
        @@authors
    end
end

class Book
    attr_accessor :authors, :name, :publishing_house, :year
    def initialize(*authors, name, publishing_house, year)
        if year.to_s =~ /[\d]{4}/ && Time.new(year).year <= Time.new().year &&
           book_or_publisher?(name.to_s) &&
           book_or_publisher?(publishing_house.to_s)

            @authors = Array.new
            @authors.push(authors)
            @name = name
            @publishing_house = publishing_house
            @year = year
        end
    end

    def to_s()
        @authors? "[#{@name}][#{@publishing_house}][#{@year}] #{@authors.join(", ")}" : ""
    end
end

authors = [
    Author.new("Bill", "Brown", "Johnson"),
    Author.new("Bill", "Brown", "Johnson"),
    Author.new("John", "Smith"),
    Author.new("Willy", "Lewis"),
    Author.new("Bart", "Simpson")
]

books = [
    Book.new(Author.uniq(authors), "Book1", "Book House", 2022),
    Book.new(Author.uniq(authors), "Book2", "Book House;", 2022),
    Book.new(Author.uniq(authors), "Book3", "Book House.", 2023),
    Book.new(Author.uniq(authors), "Book", "Book House", 2020)
]

books.each{|book| p book.to_s}