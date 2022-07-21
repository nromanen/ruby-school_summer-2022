def pow_of_2(n)
  arr = []
  for i in 0..n
    arr[i] = 2.pow(i)
  end
  return "#{arr}"
end

puts "Enter n:"
n = gets.to_i
puts pow_of_2(n)
