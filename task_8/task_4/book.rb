class Book
  attr_accessor :authors, :name, :edition, :year

  def initialize(name, authors, edition, year)
    if valid?(name, authors, edition, year)
      @name = name
      @year = year
      @authors = authors
      @edition = edition
    else
      @name = nil
      @year = nil
      @edition = nil
      @authors = nil
    end
  end

  def valid?(name, authors, edition, year)
    return false unless name =~ /[\p{Alnum}\-.,;]+/ && edition =~ /[\p{Alnum}\-.,;]+/
    return false if year < 1000 || year > 2022

    (0...authors.size).each do |i|
      (0...authors.size).each do |j|
        if ((authors[i].name == authors[j].name) && (authors[i].surname == authors[j].surname) &&
          (authors[i].patronymic == authors[j].patronymic)) && i != j
          return false
        end
      end
    end

    true
  end

  def to_s
    "Name: #{@name}\n" \
      "Authors: #{authors ? @authors.map(&:to_s) : []}\n" \
      "Edition: #{@edition}\n" \
      "Year: #{@year}\n" \
      '-------------------'
  end
end
