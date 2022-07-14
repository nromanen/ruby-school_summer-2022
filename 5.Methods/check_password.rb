def check_password(login, password)
    Proc.new{|log, pass| login == log ? password == pass : false}
end
  
check = check_password("admin", "admin")
p check.call("admin", "admin") #true
p check.call("admin", "admin1") #false