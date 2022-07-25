def to_power(n)
  if n > 0
    arr = []
    for i in 0..n
      arr[i] = n ** i
    end
    puts arr
  else
    puts "Incorrect value"
  end
end

to_power(3)