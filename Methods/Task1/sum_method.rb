def sum
  [4, 0, -12].map{|num| yield(num)}.sum
end
puts sum{|num| num > 0? num : num**2}
