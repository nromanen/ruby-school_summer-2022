def admin_check_password(login, pass)
  data =-> (user,password){user.eql?(login) && password.eql?(pass)}
end

admin = admin_check_password("admin", "adin")

puts admin.call("admin", "adin")
puts admin.call("user", "user")
puts admin.call("admin", "admin")
puts admin.call("user", "password")
