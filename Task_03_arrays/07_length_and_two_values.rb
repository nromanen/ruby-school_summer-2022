def length_and_2values(n, val1, val2)
  res = []
  for i in 0..n - 1
    (i % 2).zero? ? res.append(val1) : res.append(val2)
  end
  return "#{res}"
end

puts length_and_2values(5, true, false)
puts length_and_2values(10, "blue", "red")
puts length_and_2values(0, "one", "two")