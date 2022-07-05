def gps(s, x)
  if x.length <= 1
    return 0
  end
  delta = 0
  max = 0
  i = 0
  while i < x.length - 1
    delta = (x[i + 1].to_f - x[i].to_f).abs * (60 / s) * 60
    if delta > max
      max = delta
    end
    i += 1
  end
  puts max.floor
end

gps(15, [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25])