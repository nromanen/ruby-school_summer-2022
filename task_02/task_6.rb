def square_or_square_root(array)

    result = []

    array.each do |element|

        if Math.sqrt(element)% 1 == 0
            result.append(Math.sqrt(element).round())
        else
            result.append(element ** 2)
        end

    end

    return result

end

square_or_square_root([4, 3, 9, 7, 2, 1]) # [2, 9, 3, 49, 4, 1]
square_or_square_root([4, 3, 9, 7, 2, 1]) # [2, 9, 3, 49, 4, 1])
square_or_square_root([100, 101, 5, 5, 1, 1]) # [10, 10201, 25, 25, 1, 1])
square_or_square_root([1, 2, 3, 4, 5, 6]) # [1, 4, 9, 2, 25, 36])