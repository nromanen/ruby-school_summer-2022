def square_sum(numbers)

    result = 0

    for numbers in numbers
      result += numbers**2
    end

    return result

end

square_sum([1, 2]) # 5
square_sum([0, 3, 4, 5]) # 50
square_sum([]) # 0
square_sum([-1, -2]) # 5
square_sum([-1, 0, 1]) # 2