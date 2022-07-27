def check_password(username, password)
  proc do |un, pw|
    if un == username && pw == password
      true
    else
      false
    end
  end
end

admin = check_password('alex', 'alex')

puts admin.call('alex', 'alex') # true
puts admin.call('alex') # false
puts admin.call('alex', '1234') # false
puts admin.call('john', '5678') # false
