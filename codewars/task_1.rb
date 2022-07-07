def powers_of_two(n)
    result = []
    (0..n).each do |index|
        result.append(2**index)
    end
    result
end