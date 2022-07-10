def name?(name)
    return name =~ /^\p{Upper}{1}\p{Lower}{0,14}$/ ? true : false
end 

def doublename?(name)
    if name =~ /\-/
        i = name =~ /\-/
        return (name?(name[0...i]) and name?(name[i+1..-1]))? true : false
    end
end 

def name_validator(names)
    names.each do |name|
        puts (name?(name) or doublename?(name))? "#{name} - Valid" : "#{name} - Invalid"
    end
end

name_validator([
    "Анна",
    "Анна2",
    "Анна-Марія",
    "Нннннннннн",
    "Забагатосимволів",
    "І-Ф"
])
