
class Author
  attr_reader :name, :surname, :patronymic
  @@authors = []
  @@pattern_name = /^\p{Lu}\p{Ll}{1,14}(-(\p{Lu}\p{Ll}{1,14}$)|$)/
  @@pattern = /^\p{Lu}\p{Ll}{1,14}$/

  def initialize(name, surname, patronymic ="")
    if name.match(@@pattern_name) != nil && surname.match(@@pattern) != nil
      unless exists?(name, surname)
        @name = name
        @surname = surname
        @patronymic = patronymic
        @@authors.push self
      end
    end
  end

  def eql?(name, surname)
    self.name == name && self.surname == surname
  end

  def exists?(name, surname)
    @@authors.each { |el|
      return true if el.eql? name,surname
    }
    false
  end
end