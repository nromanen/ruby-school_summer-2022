def values(n, arr)
  new_arr=[]
  for i in 0..n-1 do
    if (i)%2!=0
      new_arr[i]=arr[0]

    else if (i)%2==0
           new_arr[i]=arr[1]
         end
    end
  end
  new_arr
end
n=5
array=["one", "two"]
puts values(n, array)