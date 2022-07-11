def merge(arr)
  start_i = 0
  end_i = 1
  while end_i < arr.length do
    if arr[start_i] == arr[end_i]
      arr[start_i] = arr[start_i] + arr[end_i]
      arr[end_i] = 0
      start_i+=1
    end
    end_i+=1
  end
  print("#{arr.sort.reverse}\n")
end

merge([2,0,2,2]) # 4,2,0,0
merge([2,0,2,4]) # 4,4,0,0
merge([4,4,0,4]) # 8,4,0,0
merge([2,2,4,16]) # 16,4,4,0