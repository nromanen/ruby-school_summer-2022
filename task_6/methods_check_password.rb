def admin_check_password(u1, p1)

    lambda =-> (user,password){u1 == user && p1 == password}

end

admin = admin_check_password("admin", "asdasd")

p admin.call("admin", "asdasd")
p admin.call("user", "asdasd")
p admin.call("admin", "admin")
p admin.call("user", "user")
p admin.call("user")