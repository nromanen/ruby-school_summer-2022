def powers_of_two(n)
    array=[]
        for i in 0..n do
            array[i]=2 ** i
          i += 1
        end
      
    puts array 
      
    end
    powers_of_two(2)