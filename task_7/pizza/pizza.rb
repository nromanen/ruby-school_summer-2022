class Pizza
attr_accessor :ingredients
attr_accessor :number
attr_accessor :diagonal

@@order_count = 0
@@fail_count = 0

def initialize(diagonal, ingredients)
    unless [25, 50].include? diagonal
    @diagonal = diagonal
    @ingredients = ingredients
    @@order_count += 1
    @number = @@order_count
    return
    end
    @number = 0
    @diagonal = 0
    @ingredients = []
    @@fail_count += 1
  end

def self.fail_instance
  @@fail_count
end

def to_s
  "#{@number} - #{@diagonal}, #{@ingredients}"
end
end
