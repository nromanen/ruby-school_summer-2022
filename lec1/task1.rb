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
  str =~ /\W/
end

puts "#{is_uppercase('abc1')}" + '_' +
       "#{is_lowercase('abc1')}" + '_' +
       "#{is_number('abc1')}" + '_' +
       "#{is_symbol('abc1')}"

def interpolate(str)
  puts "#{is_uppercase(str)}" + '_' +
         "#{is_lowercase(str)}" + '_' +
         "#{is_number(str)}" + '_' +
         "#{is_symbol(str)}"
end

interpolate('#####')