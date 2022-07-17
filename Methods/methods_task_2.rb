def check_account(login, password)
  Proc.new{ |log, pass| log.eql?(login) && pass.eql?(password) }
end

admin = check_account("admin", "admin")

p admin.call("admin", "admin") #expected true
p admin.call("admin") #expected false
p admin.call("user", "user") #expected false
p admin.call("user") #expected false