def calculate_speed(first_position, second_position, s)
  3600 * (second_position - first_position) / s
end

def gps(s, x)
  if x.length <= 1
    0
  else
    highest_hourly_speed = x.each_cons(2).map { |first_item, second_item| calculate_speed(first_item, second_item, s) }.max.to_i
  end
end

highest_speed = gps(15, [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25])
print("#{highest_speed}")