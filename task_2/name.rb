def name?(name)
    name =~ /^\p{Upper}{1}\p{Lower}{0,14}$/
end 

def doublename?(name)
    i = name =~ /\-/
    name?(name[0...i]) and name?(name[i+1..-1]) if name =~ /\-/
end 

def name_validator(names)
    names.map { |name| name?(name) || doublename?(name) ? name : nil }.compact
end

print name_validator([
    "Анна",
    "Анна2",
    "Анна-Марія",
    "Нннннннннн",
    "Забагатосимволів",
    "І-Ф"
])
