require_relative 'pizza'

pizza1 = Pizza.new(10, %w[mushroom cheese])
pizza2 = Pizza.new(25, %w[mushroom cheese cherry])
pizza3 = Pizza.new(50, ['mushroom'])
pizza4 = Pizza.new(100, %w[mushroom cheese cherry])

puts Pizza.fail_instance

puts pizza1
puts pizza2
puts pizza3
puts pizza4