def sq_sum(arr)
  print("#{arr.map { |e| e ** 2 }}\n#{arr.sum}")
end

sq_sum([1, 2, 2])