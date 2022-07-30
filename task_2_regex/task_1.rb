def is_uppercase(str)
  str =~ /[A-Z]/
end

def is_lowercase(str)
  str =~ /[a-z]/
end

def is_number(str)
  str =~ /\d/
end

def is_symbol(str)
  str =~ /[^\p{L}\p{N}]/
end

def interpolate(str)
  puts "#{is_uppercase(str)}_#{is_lowercase(str)}_#{is_number(str)}_#{is_symbol(str)}"
end

interpolate('#####')
interpolate('abc1')
interpolate('abcЯ1')