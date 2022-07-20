require_relative 'phone_user.rb'

user = PhoneUser.new('Username')

user.phone = '380678765567'

puts user

user.phone = '+380678765567'

puts user

