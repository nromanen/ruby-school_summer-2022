def gps(s, x)
  max_distance = 0
  (1...x.length).each {|i| max_distance = x[i] - x[i-1] if max_distance < x[i] - x[i-1]}
  max_spped = (max_distance / (s.to_f/3600)).round
end