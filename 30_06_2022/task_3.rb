def say_hello(name, city, state)
  "Hello, #{name.join(' ')}!".concat(' Welcome to ', city, ', ', state, '!')
end

p say_hello(%w[John Smith], 'Phoenix', 'Arizona') #expect 'Hello, John Smith Smith! Welcome to Phoenix, Arizona!'