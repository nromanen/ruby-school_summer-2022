def sum
    [4, 0, -12].map{|i| yield(i)}.sum
end
  puts sum{|i| i > 0? i : i**2}