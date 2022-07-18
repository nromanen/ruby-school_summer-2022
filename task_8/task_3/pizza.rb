class Pizza
  class_variable_set(:@@count, 0)
  class_variable_set(:@@fails, 0)
  attr_accessor :diagonal, :ingredients, :number

  def initialize(d, ingredients)
    unless [25, 50].include? d
      @@fails += 1
      @diagonal = 0
      @ingredients = []
      @number = 0
      return
    end
    @@count += 1
    @diagonal = d
    @ingredients = ingredients
    @number = @@count
  end

  def self.fail_instance
    @@fails
  end

  def to_s
    "#{@number} : diagonal - #{diagonal}, ingredients - #{ingredients.to_s}"
  end
end

