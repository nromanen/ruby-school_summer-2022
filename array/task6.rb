def root_or_square(arr)
  for i in 0..arr.length-1
    if Math.sqrt(arr[i]) % 1 == 0
      arr[i] = Math.sqrt(arr[i])
    else
      arr[i] = arr[i]*arr[i]
    end
  end
  puts arr
end

puts "Enter size of array:\n"
n = gets.to_i
puts "Enter array:\n"
arr = []
for i in 0..n-1
  arr[i] = gets.to_i
end
root_or_square(arr)

