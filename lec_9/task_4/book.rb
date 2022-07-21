class Book
  attr_accessor :name
  attr_accessor :publisher
  attr_accessor :year
  attr_accessor :authors

  def initialize(name, publisher, year)
    year_now = Time.now.year
    if !name.match(/[\W.,-;] /).eql?(nil) ||
      !publisher.match(/[\W.,-;] /).eql?(nil) ||
      ((year <= year_now) && (year.to_s.length == 4))
      @name = name
      @publisher = publisher
      @authors = Array.new
      @year = year
    else
      @name = nil
      @publisher = publisher
      @authors = nil
      @year = nil
    end
  end

  def add_author(author)
    @authors.push(author)
  end

  def to_s
      "Name: #{@name}\n" +
      "Publisher: #{@publisher}\n" +
      "Year: #{@year}\n" +
      "Authors: #{@authors.join(" ")}\n\n"
  end
end
