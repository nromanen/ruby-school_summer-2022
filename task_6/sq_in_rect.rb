def sq_in_rect(length, width)
  return nil if length == width

  result = []

  until (length * width).zero?
    length, width = [length, width].sort
    result.push length
    width -= length
  end

  result
end
