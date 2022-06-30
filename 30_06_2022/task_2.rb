def square_sum(numbers)
  res = 0
  numbers.each{ |elem| res += elem**2 }
  res
end

p square_sum([1, 2]) # expected 5
p square_sum([0, 3, 4, 5]) # expected 50
p square_sum([]) # expected 0
p square_sum([-1, -2]) # expected 5
p square_sum([-1, 0, 1]) # expected 2
