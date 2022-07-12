def sum arr
    arr.map{|n| yield(n)}.sum
  end
  p sum([4, 0, -12]){|n| n > 0? n : n*n}