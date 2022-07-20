# Class Task 3

# Initing class
class Pizza
  # initing accessors
  attr_accessor :ingredients, :diagonal, :order_num
  # Initing class fields with default values
  @@minimal = 25
  @@maximal = 50
  @@failtures = 0
  @@count = 1
  # Creating constructor
  def initialize(ingredients, diagonal)
    # cheching  pizza size condition
    if diagonal == @@minimal || diagonal == @@maximal
      # initing object properties
      @ingredients = ingredients
      @diagonal = diagonal
      @order_num = @@count
      @@count += 1
    else
      # Or count failtures
      @@failtures += 1
    end

    # returning count of failtures
    def Pizza.fail_instance
      @@failtures
    end

    # output format
    def to_s
      "PIZZA Order №#{@order_num}\nToppings: #{@infredients}\nSize - #{@diagonal}\nCrashed - #{@@failtures} times\n--- --- --- --- ---\n\n"
    end
  end
end

# creating objects
order1 = Pizza.new(['meat', 'ketchup','cheese'], 50)
puts order1
order2 = Pizza.new(['mushrooms', 'cheese','ketchup'], 15)
puts order2
order3 = Pizza.new(['pineaples', 'mushrooms','pepperoni'], 25)
puts order3
order4 = Pizza.new(['mushrooms', 'cheese','ketchup'], 88)
puts order4
puts "Failed: #{Pizza.fail_instance} orders"