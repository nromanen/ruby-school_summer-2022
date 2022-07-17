def say_hello(name, country, city)
  return "Hello, #{name.join(' ')}!, Welcome to #{country}, #{city}!"
end

puts say_hello(['Mykhailo', 'Handabura'], 'Ukraine', 'Chernivtsi')