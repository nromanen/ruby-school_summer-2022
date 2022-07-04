def square_sum(numbers)
    array = Array.new
    array = numbers.map {|i| i**2}.reduce(:+)
    array
  end
