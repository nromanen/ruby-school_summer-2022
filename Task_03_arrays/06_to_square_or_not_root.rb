def sqrt_or_pow(a)
  res = []
  for i in 0..(a.length - 1)
    if ((Math.sqrt(a[i])) % 1).zero?
      res.append(Math.sqrt(a[i]).to_i)
    else
      res.append(a[i].pow(2))
    end
  end
  return "#{res}"
end

puts sqrt_or_pow([4, 3, 9, 7, 2, 1])