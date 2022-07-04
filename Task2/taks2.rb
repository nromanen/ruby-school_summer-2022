# Ruby task 2 - Arrays `n Loops

# main function
def square_sum(numbers)
  # empy variables using for iterations
  cur_sum = 0
  list = []
  # iterating array
  for i in 0..numbers.count
    list[i] = i ** 2
    cur_sum += i ** 2
  end
  # output
  print "#{list} - list with squared elements\n#{cur_sum} - sum of all elements in Array\n\n"
end

# calling func
square_sum([0, 3, 4, 5])