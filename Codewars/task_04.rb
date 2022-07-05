def gps(s, x)
  max_distance = 0

  (1...x.length).each do |i|
    current_distance = x[i] - x[i-1]
    if max_distance < current_distance
        max_distance = current_distance
    end
  end
  max_spped = (max_distance / (s.to_f/3600)).round
end