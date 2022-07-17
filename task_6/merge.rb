def merge(row)
  arr = row.reject(&:zero?)
  (1...arr.size).each do |i|
    if arr[i - 1] == arr[i]
      arr[i - 1] += arr[i]
      arr[i] = 0
    end
  end
  arr.reject!(&:zero?)
  arr.push(0) while arr.size < row.size
  arr
end
