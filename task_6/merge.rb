def merge(row)
  array = row.reject(&:zero?)
  (1...array.size).each do |i|
    if array[i - 1] == array[i]
      array[i - 1] += array[i]
      array[i] = 0
    end
  end
  array.reject!(&:zero?)
  array.push(0) while array.size < row.size
  array
end
