
class Book
  attr_reader :name, :authors, :issued, :year
  @@pattern_name = /[\p{L}\d\-.,;]{1,10}/
  @@pattern_year = /\d{4}/

  def initialize(name, authors, issued, year)
    @authors = nil
    if authors.respond_to?('group_by')
      if authors.group_by{ |e| e }.select { |k, v| v.size > 1 }.map(&:first).length == 0
        @authors = authors
      end
    else
      @authors = authors
    end

    if name.match(@@pattern_name).nil? || issued.match(@@pattern_name).nil? || year.match(@@pattern_year).nil? || authors.nil?
      @name = nil
      @year = nil
      @issued = nil
    else
      @name = name
      @year = year
      @issued = issued
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