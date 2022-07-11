def uppercase(str)
  (str =~ /[A-Z]/).to_s
end

def lowercase(str)
  (str =~ /[a-z]/).to_s
end

def number(str)
  (str =~ /\d/).to_s
end

def symbol(str)
  (str =~ /[#-*-+]/).to_s
end


str_1 = "abc1"
str_2 = "#####"

puts "#{uppercase(str_1)}_#{lowercase(str_1)}_#{number(str_1)}_#{symbol(str_1)}"
puts "#{uppercase(str_2)}_#{lowercase(str_2)}_#{number(str_2)}_#{symbol(str_2)}"
