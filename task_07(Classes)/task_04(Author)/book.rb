require_relative 'author.rb'

class Book
  attr_accessor :authors

  CURRENT_YEAR = Time.now.year

  def initialize(name, edition, year)
    if !is_year_valid?(year) || !is_str_valid?(name) || !is_str_valid?(edition)
      init_default_values
      return
    end

    @year = year
    @edition = edition
    @name = name
    @authors = Array.new
  end

  def add_author(author)

    if !author.instance_of?(Author) || is_author_present?(author)
      return
    end

    @authors.push(author)
  end

  def to_s
    "-----Book-----\n" +
      "Name: #{@name}\n" +
      "Edition: #{@edition}\n" +
      "Year: #{@year}\n" +
      "Authors: " +
      (@authors.nil? ? "[ ]" : @authors.map do |author|
        "#{author.first_name} #{author.surname} #{author.middle_name}"
      end.join(', '))
  end

  private

  def is_year_valid?(year)
    year.to_s.length == 4 && year <= CURRENT_YEAR
  end

  def is_str_valid?(str)
    /^[\d\p{P}\p{Lu}\p{Ll} ]+$/.match?(str)
  end

  def is_author_present?(object)
    @authors.any? do |author|
      author.first_name.eql?(object.first_name) &&
        author.surname.eql?(object.surname) &&
        author.middle_name.eql?(object.middle_name)
      end
  end

  def init_default_values
    @year = nil
    @edition = nil
    @authors = nil
    @name = nil
  end
end