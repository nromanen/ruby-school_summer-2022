require_relative 'user.rb'

user = User.new('New User')
user.phone = '380999999999'

user.phone = '+380999999999'
puts user
