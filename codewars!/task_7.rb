def alternate(n, first, second)
    res = []
      (1..n).each do |i|
          res.append(i.odd? ? first : second)
      end
      res   
  end