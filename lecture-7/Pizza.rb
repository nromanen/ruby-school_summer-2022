require './lecture-7/Count'

class Pizza
  attr_reader :d, :ingredients, :number
  @@count = Count.new

  def initialize(n, d, ingredients)
    if d == 25 || d == 50
      @@count.increment_total
      @d = d
      @ingredients = ingredients
      @number = n
    else
      @@count.increment_failure
      @d = 0
      @ingredients = []
      @number = 0
    end
  end

  def failInstance
    @@count.failure
  end
  def totalInstance
    @@count.total
  end

end