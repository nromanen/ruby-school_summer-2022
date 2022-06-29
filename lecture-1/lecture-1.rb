string = "This Ruby style guide recommends best practices so that real-world Ruby programmers can write code that can be maintained by other real-world Ruby programmers. A style guide that reflects real-world usage gets used, while a style guide that holds to an ideal that has been rejected by the people it is supposed to help risks not getting used at all - no matter how good it is."

string.to_enum(:scan, /[A-Z]/).map {Regexp.last_match}.each { |x|
  print "_#{x.offset(0)[0]}"
}
puts "\n"