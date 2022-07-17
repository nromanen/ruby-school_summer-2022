def numeric_row(a)
  res = []
  for i in 1..a.length
    res.append("#{i}: #{a[i - 1]}")
  end
  return "#{res}"
end

puts numeric_row(['a', 'b', 'c'])