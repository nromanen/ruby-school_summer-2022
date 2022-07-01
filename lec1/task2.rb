def match(str)
  puts "#{str} - #{'not ' unless str =~ /^\p{Lu}\p{Ll}{0,14}(-\p{Lu}\p{Ll}{0,14})?$/}match"
end

match('Ффффффффффффффф')
match('І-Ф')
match('Анна1')
match('Hello')
match('Anna-Henrietta')
match('Anna-henrietta')
