def check_password(user, password)
  Proc.new { |u, p| u == user && p == password }
end

admin = check_password("admin", "123")

puts admin.call("admin", "123")
puts admin.call("admsdfsdfsdfin", "123")
puts admin.call("admin", "fhfghf")
puts admin.call("admin")
