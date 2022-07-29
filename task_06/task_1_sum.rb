def sum(input)
  result = 0
  for element in input 
    result += yield(element)
  end
  result
end

puts "Result: #{sum([4, 0, -12]) { |value| value > 0 ? value : value**2 }}"
