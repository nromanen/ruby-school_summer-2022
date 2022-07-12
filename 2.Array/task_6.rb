def square_or_square_root(arr)
    arr.map{|i| Math.sqrt(i).modulo(1).zero? ? Math.sqrt(i) : i**2}
  end