#/((?<=\p{Z})|(?<=\p{P})|(?<=^))\p{Lu}\p{Ll}{0,14}((?=\p{Z})|(?=\p{P})|(?=$))/  #Only name
#/((?<=\p{Z})|(?<=\p{P})|(?<=^))\p{Lu}\p{Ll}{0,14}-\p{Lu}\p{Ll}{0,14}((?=\p{Z})|(?=\p{P})|(?=$))/ #Name with hyphen
#
#/((?<=\p{Z})|(?<=\p{P})|(?<=^))\p{Lu}\p{Ll}{0,14}-\p{Lu}\p{Ll}{0,14}((?=\p{Z})|(?=\p{P})|(?=$))| #Simple name and name with hyphen
# ((?<=\p{Z})|(?<=\p{P})|(?<=^))\p{Lu}\p{Ll}{0,14}((?=\p{Z})|(?=\p{P})|(?=$))[^-]/
def find_names(str)
  str.scan(/(((?<=\p{Z})|(?<=\p{P})|(?<=^))\p{Lu}\p{Ll}{0,14}-\p{Lu}\p{Ll}{0,14}((?=\p{Z})|(?=\p{P})|(?=$))|((?<=\p{Z})|(?<=\p{P})|(?<=^))\p{Lu}\p{Ll}{0,14}((?=\p{Z})|(?=\p{P})|(?=$))[^-])/)
end

text = gets.to_s

puts find_names(text)