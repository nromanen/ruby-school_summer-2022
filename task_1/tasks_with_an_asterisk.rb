def check_name(str)
    
  puts "#{str} - #{'not ' unless str =~ /^\p{Lu}\p{Ll}{0,14}(-\p{Lu}\p{Ll}{0,14})?$/} coincidence"

end

check_name('Аааааааааааннннннннаааааааа')
check_name('І-Ф')
check_name('Нннннннн')
check_name('Анна7257527')
check_name('Анна-Марія')
check_name('Анна-марія')