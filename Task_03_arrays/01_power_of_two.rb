n = gets.to_i

def power_Of_Two(n)
  a = []
  for i in 0..n
    a.append 2.pow(i)
  end
  return "#{a}"
end

puts power_Of_Two(n.abs)