def square_or_power(arr)
  res = arr.map do |e|
    if Math.sqrt(e)% 1 == 0
      Math.sqrt(e).round
    else
      e**2
    end
  end
  print(res)
end

square_or_power([4,3,9,7,2,1])
