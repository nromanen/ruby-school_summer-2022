def is_name(name)
    name_pattern = /^[А-Я,І]{1}[а-я,і]{0,14}$/
    return name =~ name_pattern ? true : false
end 

def is_doublename(name)
    if name =~ /\-/
        i = name =~ /\-/
        return (is_name(name[0...i]) and is_name(name[i+1..-1]))? true : false
    end
end 

names = 
[
    "Анна",
    "Анна2",
    "Анна-Марія",
    "Нннннннннн",
    "Забагатосимволів",
    "І-Ф"
]

names.each do |name|
    puts (is_name(name) or is_doublename(name))? "#{name} - Valid" : "#{name} - Invalid"
end