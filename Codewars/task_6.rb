def square_or_square_root(arr)
    result = []
    arr.each do |item|
        result.append(Math.sqrt(item).modulo(1).zero? ? Math.sqrt(item).to_i : item**2)
    end
    result
end