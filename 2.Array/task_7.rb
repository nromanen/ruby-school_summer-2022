def alternate(n, first, second)
    (1..n).map{|i| i.odd? ? first : second}
end