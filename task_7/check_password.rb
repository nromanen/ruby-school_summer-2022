def admin_check_password(username, user_password)
  proc { |user, password| user.eql?(username) && password.eql?(user_password) }
end

admin = admin_check_password('u1', 'p1')

p admin.call('u1', 'p1')
p admin.call('u2', 'p2')
p admin.call('aaa', 'aaa')
