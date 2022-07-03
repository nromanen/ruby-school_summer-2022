def powers_of_two(n)
  arr = []
  (0..n).each do |num|
    arr.append 2.pow num
  end
  arr
end

puts powers_of_two(5)