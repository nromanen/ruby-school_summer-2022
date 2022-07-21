def sum(input)
  sum = 0
  i = 0
  for i in 0..input.length-1
    sum += yield(input[i])
  end
  return sum
end

puts "Method result is: #{sum([4, 0, -12]) { |value| value > 0 ? value : value ** 2 }}"