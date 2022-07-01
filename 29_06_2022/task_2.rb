#/((?<=\p{Z})|(?<=\p{P})|(?<=^))\p{Lu}\p{Ll}{0,14}((?=\p{Z})|(?=\p{P})|(?=$))/  #Only name
#/((?<=\p{Z})|(?<=\p{P})|(?<=^))\p{Lu}\p{Ll}{0,14}-\p{Lu}\p{Ll}{0,14}((?=\p{Z})|(?=\p{P})|(?=$))/ #Name with hyphen
#
#/((?<=\p{Z})|(?<=\p{P})|(?<=^))\p{Lu}\p{Ll}{0,14}-\p{Lu}\p{Ll}{0,14}((?=\p{Z})|(?=\p{P})|(?=$))| #Simple name and name with hyphen
# ((?<=\p{Z})|(?<=\p{P})|(?<=^))\p{Lu}\p{Ll}{0,14}((?=\p{Z})|(?=\p{P})|(?=$))[^-]/
def find_names(str)
  arr = str.scan(/(((?<=\p{Z})|(?<=\p{P})|(?<=^))\p{Lu}\p{Ll}{0,14}-\p{Lu}\p{Ll}{0,14}((?=\p{Z})|(?=\p{P})|(?=$))|((?<=\p{Z})|(?<=\p{P})|(?<=^))\p{Lu}\p{Ll}{1,14}((?=\p{Z})|(?=\p{P})|(?=$))[^-])/)
  arr.map{ |x| x[0] }
end

text = "Anya Anya-Anya, A-A Анна-Марія, а-А Аннаааааааааааааааааааааааааааа-Маріяяяяяяяяяяяяяяяяяя Анняяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяя А "

p find_names(text)
