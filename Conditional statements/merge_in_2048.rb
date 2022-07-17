def merge(arr)
    first = 0
    last = 1
    while last < arr.length do
      if arr[first] == arr[last]
        arr[first] = arr[first] + arr[last]
        arr[last] = 0
        first+=1
      end
      last+=1
    end
    print("#{arr.sort.reverse}\n")
  end
  
  merge([2,0,2,2]) # 4,2,0,0
  merge([2,0,2,4]) # 4,4,0,0
  merge([4,4,0,4]) # 8,4,0,0
  merge([2,2,4,16]) # 16,4,4,0