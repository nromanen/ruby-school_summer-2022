def check_password (u, p)
  lambda =-> (us,pa){u == us && p == pa}
end

admin = check_password("a","b")

p admin.call("a","bb")

