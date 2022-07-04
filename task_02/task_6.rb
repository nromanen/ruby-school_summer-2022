def square_or_square_root(array)
    new_array = []
    array.each do |i|
      if (Math.sqrt(i) % 1).zero?
        new_array.push Math.sqrt(i).round
      else
        new_array.push i**2
      end
    end
    return new_array
  end

  puts square_or_square_root([4, 3, 9, 7, 2, 1]).to_s