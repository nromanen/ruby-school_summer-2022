def match(str)
  puts "#{str} - #{'not ' unless str =~ /^\p{Lu}\p{Ll}{0,14}(-\p{Lu}\p{Ll}{0,14})?$/}match"
end

puts match('Ффффффффффффффф')
puts match('І-Ф')
puts match('Анна1')
puts match('Hello')
puts match('Anna-Henrietta')
puts match('Anna-henrietta')
