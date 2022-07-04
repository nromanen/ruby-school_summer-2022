def say_hello(array, city, state)
  result = 'Hello, '
  array.each do |i|
    if i != array.last
      result += "#{i} "
    else
      result += "#{i}! "
    end
  end
  result += "Welcome to #{city}, #{state}"
  print("#{result}")
end

say_hello(['John', 'Smith'], 'Phoenix', 'Arizona')