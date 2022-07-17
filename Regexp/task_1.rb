#-----------------------#

def capital_letter_index(str)
  (str =~ /[A-Z]/).to_s
end

def lowercase_letter_index(str)
  (str =~ /[a-z]/).to_s
end

def number_index(str)
  (str =~ /\d/).to_s
end

def special_character_index(str)
  (str =~ /[^[:alnum:]]/).to_s
end

#-----------------------#

line_1 = "#####"
line_2 = "abc1"

puts "#{capital_letter_index(line_1)}_#{lowercase_letter_index(line_1)}_#{number_index(line_1)}_#{special_character_index(line_1)}"
puts "#{capital_letter_index(line_2)}_#{lowercase_letter_index(line_2)}_#{number_index(line_2)}_#{special_character_index(line_2)}"