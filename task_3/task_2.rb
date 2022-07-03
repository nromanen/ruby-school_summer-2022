def square_sum(numbers)
  sum = 0
  numbers.each do |value|
    sum += value**2
  end
  sum
end
