def merge(row)
  res = []
  arr = row.reject(&:zero?)
  (1...arr.size).each {|i|
    if arr[i-1] == arr[i]
      arr[i-1] *= 2
      arr[i] = 0
    end
  }
  arr.reject!(&:zero?)
  arr+[0]*(row.size-arr.size)
end