def square_sum(numbers)
  sum = 0
  numbers.each do |i|
    sum += i**2
  end
  sum
end
