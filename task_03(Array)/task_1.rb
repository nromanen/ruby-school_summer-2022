def powers_of_two(n)
  array = []
    for i in 0..n do
        array[i] = 2.pow i
    end
  return array
end

puts powers_of_two(4)