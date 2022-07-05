# Ruby task 7 - Arrays `n Loops


# Input
puts"How many repeats do you want?"
repeats = gets.to_i
puts 'Eter first value'
first = gets.chomp
puts 'Eter second value'
second = gets.chomp

# main function
def repeat_values(repeats, first, second)
  # declare output variable
  array = []
  # checking not-null input
  if repeats <= 0
    print "No repeats in array - #{array}"
  else
    # iterating with adding elements in array
    for i in 1..repeats
      # pushing elements in array one by one
      i%2 == 0 ? array.push(first) : array.push(second)
    end
    output
    print " Repeats - #{array}"
  end
end

# calling function
repeat_values(repeats, first, second)
