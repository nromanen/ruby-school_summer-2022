def sum arr
    arr.map{|n| yield(n)}.sum
  end
  puts sum([4, 0, -12]){|n| n > 0? n : n*n}