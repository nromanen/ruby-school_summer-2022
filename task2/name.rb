puts "Enter string:\n"
str = gets.chomp
str = str.to_str
print(str.index(/[A-Z]/),"_", str.index(/[a-z]/),"_",str.index(/[0-9]/),"_",str.index(/[^[A-Za-z0-9]]/))