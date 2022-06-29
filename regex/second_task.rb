def check_name(str)
  print(str =~ /^(\p{Lu})(\p{Ll}{1,14})?((-)((\p{Lu})(\p{Ll}{1,14})?))?$/)
end

check_name('Oleksandr')

# Oleksandr-Oleksandr
# Анна-Марія
# Анна-Марыя
# أمين-أمين