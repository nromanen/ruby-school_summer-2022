#Arrays: Task 1

def powers_of_two()
  print "Enter non-negative value:"
  input = gets.to_i
  if input > 0
    arr = []
    for i in 0..input
      arr[i] = input ** i
    end
    print "Your array: #{arr}"
  else
    print "Incorrect value"
  end
end

powers_of_two()