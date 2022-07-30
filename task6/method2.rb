def check_password(a, b)
  lambda =-> (n,p){n.eql?(a) && p.eql?(b)}
end


puts "enter login: "
log = gets.chomp
puts "enter password: "
pass = gets.chomp
adm = check_password("log", "pas")

puts adm.call(log, pass)