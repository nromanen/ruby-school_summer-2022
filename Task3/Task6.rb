def square_or_square_root(numbers)
    arr = numbers.map do |i|  
      square_root = Math.sqrt(i)
      square_root % 1 == 0 ? Math.sqrt(i).to_i : i**2
    end
  arr
  end

