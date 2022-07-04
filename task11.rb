def validation (str)
    puts "#{str =~ /[A-Z]/}_#{str =~ /[a-z]/}_#{str =~ /[0-9]/}_#{str =~ /[#$%_@^&*\(\)-_=+\\|\}\{\]\[;:\/\.\,<>]/}"
end


validation('abc1')
validation('####')
validation('dddd|')