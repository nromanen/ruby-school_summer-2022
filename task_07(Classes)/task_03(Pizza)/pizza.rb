class Pizza
    attr_accessor :diagonal, :ingredients, :number
  
    @@count = 0
    @@fails = 0
  
    def initialize(diagonal, ingredients)
      unless [25, 50].include? diagonal
        @@fails += 1
        @diagonal, @number = 0
        @ingredients = []
        return
      end
      @@count += 1
      @diagonal = diagonal
      @ingredients = ingredients
      @number = @@count
    end
  
    def self.fail_instance
      @@fails
    end
  
    def to_s
      "#{@number || 0} : diagonal - #{diagonal}, ingredients - #{ingredients}"
    end
  end