def sum(arr)
  sum = 0
  arr.each do |el|
    sum += yield(el)
  end
  puts sum
end

sum([4, 0, -12]) { |e| e.negative? ? e**2 : e }
