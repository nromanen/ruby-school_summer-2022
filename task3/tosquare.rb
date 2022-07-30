arr=[4,3,9,7,2,1]
for i in 0...arr.length do
  if Math.sqrt(arr[i].to_i)==Math.sqrt(arr[i].to_i).to_i
    arr[i]=Math.sqrt(arr[i]).to_i
  else
    arr[i]=arr[i].to_i**2
    end
end
puts arr