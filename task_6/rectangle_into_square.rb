def sqInRect length, width
  return nil if length == width

  result = []

  until length * width == 0
    length, width = [length, width].sort
    result.push length
    width -= length
  end

  result
end