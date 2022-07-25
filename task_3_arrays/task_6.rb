def square_or_square_root (arr)
  i = 0
  while i < arr.size  do
    arr.map { |e| puts "#{i+=1}: #{e}" }
    i += 1
  end
end

square_or_square_root (["a", "b", "c"])
