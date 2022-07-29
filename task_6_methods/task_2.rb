def check_account(login, password)
  Proc.new{ |log, pass| log.eql?(login) && pass.eql?(password) }
end

admin = check_account("admin", "admin")

p admin.call("admin", "admin")
p admin.call("admin")
p admin.call("user", "user")
p admin.call("user")