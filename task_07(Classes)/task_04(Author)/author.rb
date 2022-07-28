class Author
  attr_accessor :name, :surname, :patronymic

  @@all_authors = []

  def initialize(name, surname, patronymic)
    @name = name
    @surname = surname
    @patronymic = patronymic
    @@all_authors.push(self) if valid_all(name, surname, patronymic) && !author_in_db?(name, surname, patronymic)
  end

  def valid?(value)
    return false if value.length > 15

    index = value =~ /^(\p{Upper}\p{Lower}*)(-\p{Upper}\p{Lower}+)?$/
    index != nil
  end

  def valid_all(name, surname, patronymic)
    return false unless valid? name
    return false unless valid? surname
    return false if !valid?(patronymic) && patronymic != ''

    true
  end

  def author_in_db?(name, surname, patronymic)
    !@@all_authors.find_index do |el|
      el.name == name && el.surname == surname && el.patronymic == patronymic
    end.nil?
  end

  def self.all
    @@all_authors
  end

  def to_s
    "#{@name} #{@surname} #{@patronymic}".strip
  end
end