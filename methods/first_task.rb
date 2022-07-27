def sum(array)
  result = 0
  array.each { |item| result += yield(item) }
  result
end

result =  sum([4, 0, -12]) do |value|
  if value >= 0
    value
  else
    value**2
  end
end

print result
