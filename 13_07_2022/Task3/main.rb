require_relative 'pizza.rb'

pizza_1 = Pizza.new(10, %w[mushroom cheese])
pizza_2 = Pizza.new(25, %w[mushroom cheese cherry])
pizza_3 = Pizza.new(50, %w[mushroom])
pizza_4 = Pizza.new(100, %w[mushroom cheese cherry])

puts pizza_1, pizza_2, pizza_3, pizza_4

puts Pizza.failed_instances #expected 2