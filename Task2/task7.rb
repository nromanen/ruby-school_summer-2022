# Ruby task 7 - Arrays `n Loops

puts"How many repeats do you want?"
repeats = gets.to_i
puts 'Eter first value'
first = gets.chomp
puts 'Eter second value'
second = gets.chomp

def repeat_values(repeats, first, second)
  array = []
  if repeats <= 0
    print "No repeats in array - #{array}"
  else
    for i in 1..repeats
      if i%2 == 0
        array.push(first)
      else
        array.push(second)
      end
      # if i%2 == 0 ? array.push(first) : array.push(second)
    end
    print " Repeats - #{array}"

  end
end

repeat_values(repeats, first, second)
