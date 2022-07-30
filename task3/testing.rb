def lines(first_line)
  (0...first_line.size).each{|n| first_line[n] = first_line[n].chomp}
  result_line=[]
  (0...first_line.size).each{|n| result_line[n] = "#{n+1}: #{first_line[n]}"}
  result_line
end

line="a", "b", "c"
result_line=lines(line)
(0...result_line.size).each{|n| print "#{result_line[n]}, "}

#abo tak:
# print lines(line)

# todi bude ["1: a", "2: b", "3: c"]
