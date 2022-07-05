def square_sum(numbers)
    sum = 0

    numbers.each do |item|
    sum += item**2
    end
    sum
end
