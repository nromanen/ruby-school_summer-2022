def is_UpCase(str)
    str =~ /[[:upper:]]/
end

def is_LowCase(str)
    str =~ /[[:lower:]]/
end

def is_Number(str)
    str =~ /[[:digit:]]/
end

def is_Symbol(str)
    str =~ /[[:punct:]]/
end

def result(str)
    return "#{is_UpCase(str)}_#{is_LowCase(str)}_#{is_Number(str)}_#{is_Symbol(str)}"
end

puts result('abc1')
puts result('####')