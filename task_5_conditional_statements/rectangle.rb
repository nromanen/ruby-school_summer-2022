def rectangle_into_squares(length, width)
  arr = Array.new
  if length != width
    while length > 0 && width > 0 do
      arr.push(length > width ? width : length)
      length > width ? length -= width : width -= length
    end
  else
    nil
  end
  print("#{arr}\n")
end

rectangle_into_squares(5,5)
rectangle_into_squares(5,3)
rectangle_into_squares(5,4)