print 'Enter the number of elements:'
n = gets.to_i
a = []
for i in 0..(n - 1)
  print "Input #{i + 1} element:"
  i = gets.to_i
  a.append(i)
end

def square_n_sum(a)
  sum = 0
  for i in 0..(a.length - 1)
    sum += a[i].pow(2)
  end
  return sum
end

puts square_n_sum(a)