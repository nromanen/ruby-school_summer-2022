def city_hello(name, city, state)
  puts "Hello, #{name.join(" ")}! Welcome to #{city}, #{state}!"
end

city_hello(["John", "Smith"], "Phoenix", "Arizona")
