def get_start_ids_of_matches (pattern, str)
  arr = []
  str.to_enum(:scan, pattern).map {Regexp.last_match}.each { |x|
    arr.append x.offset(0)[0]
  }
  arr
end

def print_array (arr)
  arr.each{|id|
    print "_#{id}"
}
  puts "\n"
end

string = ")($T$h$!i^s Ruby style guide recommends (#323$1!2) best practices so that real-world Ruby programmers (#323$1!2) can write code that can be maintained (#323$1!2) by other real-world Ruby programmers. A style guide that reflects (#323$1!2) real-world usage gets used, while a style guide that holds to an ideal that has been (#323$1!2) rejected by the people it is 24supposed to help risks not getting used at 2all - no matter how good it is."


print_array get_start_ids_of_matches(/[A-Z]/,string)
puts "\n"

print_array get_start_ids_of_matches(/[a-z]/,string)
puts "\n"

print_array get_start_ids_of_matches(/[\d]/,string)
puts "\n"

print_array get_start_ids_of_matches(/[^A-Za-z0-9 ]/,string)
puts "\n"

