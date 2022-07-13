Rules = [:name?, :doublename?]
def name?(name)
    name =~ /^\p{Upper}{1}\p{Lower}{0,14}$/ ? true : false
end 

def doublename?(name)
    i = name =~ /\-/
    name?(name[0...i]) and name?(name[i+1..-1]) if name =~ /\-/ ? true : false
end 

def validate(name) 
    Rules.each{|rule|  return name if method(rule).call(name)}
    nil
end

def name_validator(names)
    names.map { |name| validate(name)}.compact
end

names = [
    "Анна",
    "Анна2",
    "Анна-Марія",
    "Нннннннннн",
    "Забагатосимволів",
    "І-Ф"
]
p name_validator(names)

