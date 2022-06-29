string = ")($T$h$!i^s Ruby style guide recommends (#323$1!2) best practices so that real-world Ruby programmers (#323$1!2) can write code that can be maintained (#323$1!2) by other real-world Ruby programmers. A style guide that reflects (#323$1!2) real-world usage gets used, while a style guide that holds to an ideal that has been (#323$1!2) rejected by the people it is 24supposed to help risks not getting used at 2all - no matter how good it is."

string.to_enum(:scan, /[A-Z]/).map {Regexp.last_match}.each { |x|
  print "_#{x.offset(0)[0]}"
}
puts "\n\n"

string.to_enum(:scan, /[a-z]/).map {Regexp.last_match}.each { |x|
  print "_#{x.offset(0)[0]}"
}

puts "\n\n"

string.to_enum(:scan, /[\d]/).map {Regexp.last_match}.each { |x|
  print "_#{x.offset(0)[0]}"
}

puts "\n\n"

string.to_enum(:scan, /[^A-Za-z0-9 ]/).map {Regexp.last_match}.each { |x|
  print "_#{x.offset(0)[0]}"
}