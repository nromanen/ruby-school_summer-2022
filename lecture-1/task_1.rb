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

while true
  puts 'Enter number (1 -- enter own string, 2 -- use pre-installed string,  0 -- exit)'
  conf = gets.chomp.to_i

  case conf
  when 1
    print 'Enter your string: '
    string = gets
  when 2
    string = ')($T$h$!i^s Ruby style guide recommends (#323$1!2) best practices so that real-world Ruby programmers (#323$1!2) can write code that can be maintained (#323$1!2) by other real-world Ruby programmers. A style guide that reflects (#323$1!2) real-world usage gets used, while a style guide that holds to an ideal that has been (#323$1!2) rejected by the people it is 24supposed to help risks not getting used at 2all - no matter how good it is.'
  when 0
    break
  else
    puts "what?"
  end

  while true
    puts 'Enter number (1 -- get capital letters, 2 -- lower letters, 3 -- digits, 4 -- special characters  0 -- exit)'
    conf1 = gets.chomp.to_i
    case conf1
    when 1
      print_array get_start_ids_of_matches(/[A-Z]/,string)
      puts "\n"
    when 2
      print_array get_start_ids_of_matches(/[a-z]/,string)
      puts "\n"
    when 3
      print_array get_start_ids_of_matches(/[\d]/,string)
      puts "\n"
    when 4
      print_array get_start_ids_of_matches(/[^A-Za-z0-9 ]{1,10}/,string)
      puts "\n"
    when 0
      break
    else
      puts "what?"
    end
  end
end
