# system('chcp 1251') - Перед запуском в терміналі вручну ввести <chcp 1251> для роботи кирилиці
print 'Input name:'
name = gets.encode('UTF-8').force_encoding('UTF-8').chomp
def name?(str)
    str =~ /^\p{Upper}\p{Lower}{0,14}(-\p{Upper}\p{Lower}{0,14})?$/ ? true : false
end
puts name?(name)