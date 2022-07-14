def sum(arr)
  sum = 0
  i = 0
  while i < arr.size do
    sum += yield(arr[i])
    i+=1
  end
  puts sum
end

sum([4, 0, -12]) { |e| e < 0 ? e**2 : e }
