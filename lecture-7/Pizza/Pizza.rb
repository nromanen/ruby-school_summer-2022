require './lecture-7/Pizza/Count'

class Pizza
  attr_reader :d, :ingredients, :number
  @@count = Count.new

  def initialize(d, ingredients)
    if d == 25 || d == 50
      @@count.increment_total
      @d = d
      @ingredients = ingredients
      @number = @@count.total
    else
      @@count.increment_failure
      @d = 0
      @ingredients = []
      @number = 0
    end
  end

  def self.failInstance
    @@count.failure
  end
  def self.totalInstance
    @@count.total
  end

end