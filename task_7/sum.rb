def sum(arr)
  sum = 0
  arr.each do |el|
    sum += yield(el)
  end
  sum
end
