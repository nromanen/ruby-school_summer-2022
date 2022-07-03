def gps(s, x)
  u = 0.0
  x = x.compact
  speed_on_every_section = []
  if !x.nil? and x.length > 1
    (0...x.length - 1).each { |i|
      delta_distance = x[i+1] - x[i]
      speed_on_every_section.append (3600 * delta_distance) / s
    }
    u = speed_on_every_section.max
  end
  u&.round
end

puts gps(15, [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, nil]).to_s