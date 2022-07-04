def calculate(array)
  result = 0
  array.each { |i| result += i**2 }
  result
end

sum = calculate([1, 2, 2])
print("#{sum}")