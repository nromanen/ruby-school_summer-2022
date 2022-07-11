def say_hello(name, city, state)
    "Hello, #{name.join(" ")}! Welcome to #{city}, #{state}!"
end

puts say_hello(['Sam', 'Azor'], 'Dubbo', 'New South Wales')#Hello, Sam Azor! Welcome to Dubbo, New South Wales!
puts say_hello(['John', 'Smith'], 'Phoenix', 'Arizona')#Hello, John Smith! Welcome to Phoenix, Arizona!
