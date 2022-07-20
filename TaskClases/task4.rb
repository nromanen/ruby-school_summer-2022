#class task4

class Author
  # accessor
  attr_accessor :name, :surname, :midname
  # epmty array initing
  @@authors = Array.new

  # constructor
  def initialize(name, surname, midname)
    # is input valid? expressoin
    input_valid?(name, surname, midname) ? [@name = name,@surname = surname, @midname = midname ]  : puts = "Invalid info: \n#{name}\n#{surname}\n#{midname}"
  end

  # add author in array is input valid method
  def add_if_valid?(author)
    @@authors.push([@name, @surname , @midname])
  end

  # validate function
  def value_valid?(input)
    # variables and pattern
    max_length = 15
    pattern = /[^A-Za-z]/
    # condititon
      if input.to_s.length >= max_length && !input.match(pattern)==0
        false
      else
        true
      end
    input
  end

  # checking valid names by calling valid method for each part of name. surname. midname
  def input_valid?(name, surname, midname)
    if !value_valid?(name) || !value_valid?(surname) || !value_valid?(midname)
      false
    else
      true
    end
  end

  # method for checking existing values
  def author_exists?(name, surname, midname)
    existence = false
    # iterating object
    for i in @@authors
      # checking object
      i.name == name && i.surname == surname && i.midname == midname ? existence = true : existence = false
    end
    existence
  end

  # authors output method
  def Author.return_catalogue
    "All authors: #{@@authors}\n"
  end

  # output format
  def to_s
    "Author: #{@name} #{@surname} #{@midname}"
  end
end

# creating objects
author1 = Author.new('Alok', 'Mike', 'Petrovych')
puts author1
author2 = Author.new('Alok', 'Mike', 'Petrovych')
puts author2
author3 = Author.new('Mattew', 'James', 'jr.')
puts author3
author4 = Author.new(44, 44, 44)
puts author4
# calling method
puts Author.return_catalogue