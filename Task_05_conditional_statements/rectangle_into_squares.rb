def sqInRect(length, width)
  return nil if length == width
  result = []
  until (length * width).zero?
    length, width = [length, width].sort
    result.push length
    width -= length
  end
  return result
end

puts "First call: #{sqInRect(5, 5)}\nSecond call: #{sqInRect(5, 3)}"