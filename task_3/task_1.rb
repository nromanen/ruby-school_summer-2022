def powers_of_two(number)
  raise StandardError if number.negative?

  array = []
  (0..number).each do |i|
    array.push(2**i)
  end
  array
end
