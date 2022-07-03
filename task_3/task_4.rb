SECONDS_IN_HOUR = 3600

def gps(seconds, array)
  max_speed = 0
  (0...array.length - 1).each do |i|
    current_speed = (array[i + 1] - array[i]) * (SECONDS_IN_HOUR / seconds)
    max_speed = current_speed if max_speed < current_speed
  end
  max_speed.round
end
