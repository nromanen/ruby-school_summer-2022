def alternate(n, first, second)
    res = []
    (1..n).each do |i|
        res.append(i % 2 != 0 ? first : second)
    end
    res      
end