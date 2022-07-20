# Methods task2
#creating method with proc
def password_check(login, password)
  Proc.new{|lval, pval| login == lval ? password == pval : false}
end

# calling method
checker = password_check("pass", "pass")
puts checker.call('pass', 'pass') # true
puts checker.call('login', 'login') # false
puts checker.call('neLogin', 'tochnoNeLogin') # false
