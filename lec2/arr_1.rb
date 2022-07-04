def to_power(n)
  i = 0
  arr = Array.new
  while i <= n  do
    arr.push(2**i)
    i += 1
  end
  puts arr
end

to_power(2)






