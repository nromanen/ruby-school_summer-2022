def square_sum(numbers)
    sum = 0
    numbers.each do |step|
      sum += step ** 2;
    end
    return sum
  end