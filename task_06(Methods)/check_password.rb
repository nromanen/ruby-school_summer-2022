def admin_check_password(u1, p1)
    lambda =-> (user,password){user.eql?(u1) && password.eql?(p1)}
end

admin = admin_check_password("admin", "Wop")

puts admin.call("admin", "Wop")
puts admin.call("user", "Wop")
puts admin.call("admin", "admin")
puts admin.call("user", "user")