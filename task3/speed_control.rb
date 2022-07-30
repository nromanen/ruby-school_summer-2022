def gps(s, x)
  every_section_speed=[]
  speed_floor=0
  if !x.nil? and x.length > 1
    (0..x.length-2).each do |n|
      delta_distance=x[n+1] - x[n]
      every_section_speed.append((3600*delta_distance)/s)
    end
    speed_floor=every_section_speed.max
  end
  speed_floor&.round
end
x = [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25]
s=15
puts gps(s, x)
