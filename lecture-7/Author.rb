
class Author
  attr_reader :name, :surname, :patronymic
  @@authors = []
  @@pattern_name = /^\p{Lu}\p{Ll}{1,14}(-(\p{Lu}\p{Ll}{1,14}$)|$)/
  @@pattern = /^\p{Lu}\p{Ll}{1,14}$/

  def initialize(name, surname, patronymic ="")
    unless name.match(@@pattern_name) == nil || surname.match(@@pattern) == nil
      unless exists?(name, surname)
        @name = name
        @surname = surname
        @patronymic = patronymic
        @@authors.push self
      end
    end
  end

  def exists?(name, surname)
    ex = false
    @@authors.each { |el|
      if el.name == name && el.surname == surname
        ex = true
        break
      end
    }
    ex
  end
end