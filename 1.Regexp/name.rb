def name?(name)
    name =~ /^\p{Upper}{1}\p{Lower}{0,14}$/
end 

def doublename?(name)
    i = name =~ /\-/
    name?(name[0...i]) and name?(name[i+1..-1]) if name =~ /\-/
end 

def validation(name, rules) 
    rules.each{|x|  return name if method(x).call(name)}
    nil
end

def name_validator(names, rules)
    names.map { |name| validation(name, rules)}.compact
end

rules = [:name?, :doublename?]
names = [
    "Анна",
    "Анна2",
    "Анна-Марія",
    "Нннннннннн",
    "Забагатосимволів",
    "І-Ф"
]
#validation("Анна-Марія2", rules) 
p name_validator(names,rules)
