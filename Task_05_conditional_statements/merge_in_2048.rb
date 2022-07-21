def merge(row)
  array = row.reject(&:zero?)
  for i in 1..array.length
    if array[i - 1] == array[i]
      array[i - 1] += array[i]
      array[i] = 0
    end
  end
  array.reject!(&:zero?)
  array.push(0) while array.size < row.size
  array
end

puts "Result is:\nFirst call - #{merge([10,5,4,7])}\nSecond call - #{merge([2,0,2,2])}\nThird call - #{merge([2,0,1,6])}\n"