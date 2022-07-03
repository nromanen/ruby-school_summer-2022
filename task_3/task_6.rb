def square_or_square_root(arr)
  new_array = []
  arr.each do |i|
    if (Math.sqrt(i) % 1).zero?
      new_array.push Math.sqrt(i).round
    else
      new_array.push i**2
    end
  end
  new_array
end
