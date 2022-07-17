def check_pass(name, pass)
    lambda =-> (n,p){n.eql?(name) && p.eql?(pass)}
end

admin = check_pass("lenovo", "lenovo")

puts admin.call("lenovo", "lenovo") 
puts admin.call("lenovo")
puts admin.call("asus", "asus") 