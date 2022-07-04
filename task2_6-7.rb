puts " task 6 To square(root) or not to square(root)"

def square_or_square_root(arr)
  count = 0
  res = []
  while count < arr.length do
    res[count] = Math.sqrt(arr[count])
    if res[count]%1 != 0
      res[count] = arr[count]**2
    end
    count += 1
  end
  return res    
end

puts square_or_square_root([4, 3, 9, 7, 2, 1])

puts "task 7 Length and two values"

def alternate(n, first, second)
  res = []
  if n==0 
    return res
  else 
    count = 0
    while count < n do
      if count%2 == 0
        res[count] = first
      else
        res[count] = second
      end
      count +=1
    end
    return res
  end
end

puts alternate(5, "first", "second")