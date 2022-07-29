def check_password(username, user_password)
    proc { |user, password| user.eql?(username) == password.eql?(user_password) }
end