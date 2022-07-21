def square_n_sum(arr)
  sum = 0
  for i in 0..arr.length-1
    sum += arr[i].pow(2)
  end
  return sum
end

puts "Enter n:"
n = gets.to_i
arr = []
puts "Enter array"
for i in 0..n-1
  arr[i] = gets.to_i
end
puts square_n_sum(arr)
