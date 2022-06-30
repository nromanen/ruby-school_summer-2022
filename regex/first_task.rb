def regex_upper_letter(str)
  str =~ /[A-Z]/
end

def regex_lower_letter(str)
  str =~ /[a-z]/
end

def regex_number(str)
  str =~ /\d/
end

def regex_special_character(str)
  str =~ /[^[:alnum:]]/
end

def do_regex(str)
  print("#{regex_upper_letter(str)}_#{regex_lower_letter(str)}_#{regex_number(str)}_#{regex_special_character(str)}")
end

do_regex('abc1')