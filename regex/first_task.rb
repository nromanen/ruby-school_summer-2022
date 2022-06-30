def contains_upper_letter(str)
  str =~ /[A-Z]/
end

def contains_lower_letter(str)
  str =~ /[a-z]/
end

def contains_number(str)
  str =~ /\d/
end

def contains_special_character(str)
  str =~ /[^[:alnum:]]/
end

def do_regex(str)
  print("#{contains_upper_letter(str)}_#{contains_lower_letter(str)}_#{contains_number(str)}_#{contains_special_character(str)}")
end

do_regex('abc1')