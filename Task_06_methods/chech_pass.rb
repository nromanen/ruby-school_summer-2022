def password_check(login, password)
  Proc.new{|lval, pval| login == lval ? password == pval : false}
end

checker = password_check("login", "pass")
puts checker.call('login', 'pass')