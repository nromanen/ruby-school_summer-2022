def login(user, pas)
    Proc.new{|log, pass| log.eql?(user) and pas.eql?(pass)}
end
user=login("user", "user")
print user.call("user", "user")