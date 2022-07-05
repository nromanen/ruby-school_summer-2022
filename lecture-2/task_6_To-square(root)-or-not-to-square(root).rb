def square_or_square_root(arr)
  array = []
  (0...arr.length).each do |i|
    sqrt = Math.sqrt(arr[i])
    if (sqrt - sqrt.truncate) == 0
      array.append(Math.sqrt(arr[i]).ceil)
    else
      array.append(arr[i].pow(2))
    end
  end
  array
end

puts square_or_square_root([4, 3, 9, 7, 2, 1]).to_s