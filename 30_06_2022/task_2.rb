def square_sum(numbers)
  numbers.inject(0){ |sum, elem| sum + elem**2 }
end

p square_sum([1, 2]) # expected 5
p square_sum([0, 3, 4, 5]) # expected 50
p square_sum([]) # expected 0
p square_sum([-1, -2]) # expected 5
p square_sum([-1, 0, 1]) # expected 2
