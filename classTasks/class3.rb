class Pizza
attr_reader :ingredients, :number, :d
@@count=0
@@fail=0
def initialize(d, ingredients)
if d==25 or d==50
    @d=d
    @ingredients=ingredients
    @number=@@count
    @@count=@@count+1
else
    @@fail=@@fail+1
end
end
def Pizza.failInstance
    @@fail
end
def Pizza.count
    @@count
end
end
pizza1 = Pizza.new(10, ['mushroom', 'cheese']) 
pizza2 = Pizza.new 25, ['mushroom', 'cheese', 'cherry'] 
pizza3 = Pizza.new 50, ['mushroom'] 
pizza4 = Pizza.new 100, ['mushroom', 'cheese', 'cherry'] 
puts Pizza.failInstance #=> 2