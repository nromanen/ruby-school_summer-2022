class Pizza
  attr_accessor :ingredients
  attr_accessor :number
  attr_accessor :d

  @@order_count = 0
  @@fail_count = 0

  def initialize(d, ingredients)
    if d == 25 || d == 50
      @d = d
      @ingredients = ingredients
      @@order_count += 1
      @number = @@order_count
    else
      @@fail_count+=1
    end
  end

  def self.failInstance
    @@fail_count
  end

  def to_s
    "#{@number} - #{@d}, #{@ingredients}"
  end
end
