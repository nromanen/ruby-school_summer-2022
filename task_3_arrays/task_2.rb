def square_sum(arr)
  sum = 0
  for i in arr do
    sum += i ** 2;
  end
  return sum
end

puts square_sum([1, 2, 5])