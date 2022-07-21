def test_123(str)
  res = []
  for i in 0..str.length-1
    res.append("#{i+1}: #{str[i]}")
  end
  return res
end

s = []
puts "Enter list of strings\n"
for i in 0..255
  s[i] = gets.chomp
  if s[i] == "0"
    s.delete_at(i)
    break
  end
end
res = test_123(s)
puts res