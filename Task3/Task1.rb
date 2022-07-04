def powers_of_two(n)
  arr = Array.new
  (0..n).each do |k|
    arr.push(2**k)
  end
  arr
end