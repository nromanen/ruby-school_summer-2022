def sum
  [4,0,-12].map{|x| yield(x)}.sum
end

p sum{|elem| elem > 0 ? elem : elem.pow 2}
