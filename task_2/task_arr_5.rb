def input_output myArray
    myArray.each_index do |i|
        myArray[i] = "#{i+1}: #{myArray[i]}"
    end
    return myArray
  end
  
  puts input_output(["a", "b", "c"])



