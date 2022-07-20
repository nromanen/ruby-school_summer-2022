# condition task4

# initing main  func
def sqInRect(length, width)
  # checking not square condition
  if length == width
    nil
  end
  # creating empty array for output
  output = []
  # doing condition  with 'until'
  until length == width
    # making condition where one side bigger than second
    if length > width
      # pushing and subtraction lenght
      output.push(width)
      length -= width
    else
      output.push(length)
      width -= length
    end
  end
  output + [length]
end

# output
puts "First call: #{sqInRect(5, 5)}\nSecond call: #{sqInRect(5, 3)}"