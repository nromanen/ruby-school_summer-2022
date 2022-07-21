require_relative 'user_phone.rb'

user = User.new('Andrey')
user.user_phone_valid = '380956453242'

puts user

user.user_phone_valid = '+380956453242'

puts user