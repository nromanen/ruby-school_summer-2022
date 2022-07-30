def hello(name, city, state)
  print "Hello, #{name[0]} #{name[1]}! Welcome to #{city}, #{state}!"
end
name = []
puts "Enter the Name: "
name[0] = gets.chomp
puts "Enter the Surname: "
name[1] = gets.chomp
puts "Enter the city: "
city = gets.chomp
puts "Enter the state: "
state = gets.chomp
hello(name, city, state)