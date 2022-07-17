def powers_of_two(n)
  Array.new(n + 1).map.with_index{ | _,index| 2**index }
end

p powers_of_two(0) # expected [1]
p powers_of_two(1) # expected [1, 2]
p powers_of_two(3) # expected [1, 2, 4, 8]
p powers_of_two(4) # expected [1, 2, 4, 8, 16]

