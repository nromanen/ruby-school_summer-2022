def match(str)
  if str =~ /^(\p{Lu})(\p{Ll}{1,15})?((-)(\p{Lu})(\p{Ll}{1,15})?)?$/
    puts str + ' - ' + 'match'
  else
    puts str + ' - ' + 'not match'
  end
end

puts match('Ффффффффффффффффф')
puts match('І-Ф')
puts match('Анна1')
puts match('Hello')
puts match('Anna-Henrietta')
puts match('Anna-henrietta')
