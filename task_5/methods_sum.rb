def sum

    [4, 0, -12].map{|el| yield(el)}.sum

end

  puts sum{|el| el > 0? el : el**2}