def validation (str)
    a = str.match(/^\p{Lu}\p{Ll}{0,14}(-\p{Lu}\p{Ll}{0,14})?$/)
    if !!a
        puts a
    else
        puts 'bad value'
    end
end


validation('Анна-Марія')
validation('І-Ф')
validation('НННННН')
validation('Нннннн')

