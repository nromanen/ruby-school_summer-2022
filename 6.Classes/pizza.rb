class Pizza
    attr_accessor :ingredients
    @@count = 0
    @@failed = 0
    def initialize(diagonal, *ingredients)
        @@count += 1

        if diagonal != 25 && diagonal !=50
            @@failed += 1 
            diagonal = 0
            ingredients = []
        end
        @ingredients = {:id => @@count, :d => diagonal, :ingredients => ingredients}
    end

    def to_s()
        "Pizza[id: #{@ingredients[:id]}][diagonal: #{@ingredients[:d]}] ingredients: #{@ingredients[:ingredients].join(", ")}"
    end

    def self.failInstance()
        @@failed
    end
end

pizza = [
    Pizza.new(25, ['mushroom', 'cheese', 'cherry']),
    Pizza.new(50, ['mushroom']),
    Pizza.new(10, ['mushroom', 'cheese']),
    Pizza.new(100, ['mushroom', 'cheese', 'cherry'])
]

pizza.each{|pizza| p pizza.to_s}
puts "Failed: #{Pizza.failInstance()}" #2