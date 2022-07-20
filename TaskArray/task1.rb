# Ruby task 1 - Arrays `n Loops

def powers_of_two()
  # Getting value from user
  print "Put your number. Number must be non-negative.\n"
  input = gets.to_i
  # non-negative requirment
  if input > 0
    list = []
    # Iterating procedure
    for i in 0..input
      # #doing multiplying
      list[i] = input ** i
    end
    print "#{list} - output"
    # Unexpected symbol exception
  else
  print "Value is not correct"
  end
end

powers_of_two()