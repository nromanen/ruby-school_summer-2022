def sum
  [4, 0, -12].map{|n| yield(n)}.sum
end
puts sum{|n| n > 0? n : n*n}