def marge(arr)
  arr1=arr.sort

    for i in 0..arr1.length-2 do
      if arr1[i]==arr1[i+1]
        arr1[i]+=arr1[i+1]
        arr1[i+1]=0
      end
    end

  arr1.sort!.reverse
end

arr=[2, 2, 0, 2]
puts marge(arr)
