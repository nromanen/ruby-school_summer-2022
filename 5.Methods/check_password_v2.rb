Users = {admin: "StrongPassword#321"}
def check_password(login, password)
    yield(Users, login.to_sym, password, Users[login.to_sym])
  end
  
p check_password("admin2", "admin"){|users, login, password, true_password| users.has_key?(login)? password == true_password : false}
  
  