require_relative 'Pizza.rb'

pizza1 = Pizza.new(10, ['mushroom', 'cheese'])
pizza2 = Pizza.new(25, ['mushroom', 'cheese', 'cherry'])
pizza3 = Pizza.new(50, ['mushroom'])
pizza4 = Pizza.new(100, ['mushroom', 'cheese', 'cherry'])

puts pizza1.to_s
puts pizza2.to_s
puts pizza3.to_s
puts pizza4.to_s

puts Pizza.failInstance