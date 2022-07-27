def merge(array)
  result = []
  array.each do |item|
    if item != 0
      result.push(item)
    end
  end

  while result.length < array.length
    result.push(0)
  end

  result.each_with_index do |item, index|
    if index == result.length - 1
      break
    end

    if item == 0 && result[index + 1] != 0
      result[index] = result[index + 1]
      result[index + 1] = 0
      next
    end

    if item == result[index + 1]
      result[index] *= 2
      result[index + 1] = 0
    end
  end

  print result
end

merge([2,0,2,2]) # -->  [4,2,0,0]
merge([4,4,8,16]) # -->  [8,8,16,0]
merge([8,8,16,0]) # -->  [16,16,0,0]
merge([16,16,0,0]) # -->  [32,0,0,0]
