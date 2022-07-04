def alternate(n, first, second)
    (0..n - 1).map do |i|
        i % 2 == 0 ? first : second
    end
  end

