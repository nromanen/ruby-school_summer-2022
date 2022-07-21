puts "Enter string:\n"
str = gets.chomp
str = str.to_str
if str.index(/[0-9]/)
  puts "This is not a name\n"
else
  if str.index(/[A-Z]/) == 0
    if str.index(/[-]/) == nil
      puts "This is a name"
    else
      if /[A-Z]/.match(str[str.index(/[-]/)+1])
        puts "This is a name"
      else puts "This is not a name"
      end
    end
  else puts "This is not a name"
  end
end