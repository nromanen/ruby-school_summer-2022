def gps(seconds, array)
  max = 0
  (0...array.length - 1).each do |i|
    speed = (array[i + 1] - array[i]) * (3600 / seconds)
    max = speed if max < speed
  end
  max.round
end
