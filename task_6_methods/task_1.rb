def sum(*args)
  result = 0

  while (number = args.shift)
    result += yield(number)
  end

  result
end

p sum(4, 0, -12) { |val| val >= 0? val : val**2 }