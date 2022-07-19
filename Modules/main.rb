require_relative 'user.rb'

user = User.new("Nazar Palijchuk")

puts user.input_number
puts user.input_str
puts user.input_symbol
puts user.input_hash

puts user.cache