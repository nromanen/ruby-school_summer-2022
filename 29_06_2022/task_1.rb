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

line = gets.to_s

puts "#{capital_letter_index(line)}_#{lowercase_letter_index(line)}_#{number_index(line)}_#{special_character_index(line)}"