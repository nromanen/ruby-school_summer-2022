def say_hello(person,city,state)
    puts "Hello, #{person.join(" ")}! Welcome to #{city}, #{state}!\n"
end
puts "Enter your name, city and state:\n"
per = []
for i in 0..2
  per[i] = gets.chomp
  if per[i].length<4
    per.delete_at(i)
  end
end
puts per
city = gets.chomp
state = gets.chomp
say_hello(per,city,state)