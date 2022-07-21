def gps(s, x)
  if (x[(x.length - 1)] - x[0]) <= 1
    return 0
  else
    speed = []
    i = 0
    begin
      delta_distance = x[i + 1] - x[i]
      speed.append (3600 * delta_distance) / s
      max = speed.max
      i += 1
    end while i < (x.length - 1)
    return max.round
  end
end

puts gps(15, [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25])