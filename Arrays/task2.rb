# Arrays: Task 2

def square_sum(numbers)
  total = 0
  arr = []
  for i in 0..numbers.count
    arr[i] = i ** 2
    total += i ** 2
  end
  print "List of squared elements: #{arr}\nTotal of all elements: #{total}\n\n"
end

print square_sum([0, 2, 3])
