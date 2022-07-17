def square_sum(numbers)
    sum = 0
        numbers.each do |num|
            sum += num.pow(2)
        end
    return sum
end
  
   puts square_sum([2,6,3])