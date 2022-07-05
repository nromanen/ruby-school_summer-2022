def number_elements(arr)
    i = 0
    while i < arr.size  do
      arr.map { |e| puts "#{i+=1}: #{e}" }
      i += 1
    end
end

number_elements(["a", "b", "c"])
number_elements([])