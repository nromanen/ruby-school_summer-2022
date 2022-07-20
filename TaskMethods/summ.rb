#task Methods 1

# initing method
def sum(input)
  # creating empty variables
  result = 0
  i = 0
  # iterate block
  while i < input.length do
    result += yield(input[i])
    i+=1
  end
  result
end

# output with block
puts "Method result is: #{sum([4, 0, -12]) { |value| value > 0 ? value : value**2 }}"
# output - 4 + 0 + 12*12 = 148

# test
puts "Method result is: #{sum([5, -5, -1]) { |value| value > 0 ? value : value**2 }}"
# output - 5 + 5*5 + 1*1 = 31
