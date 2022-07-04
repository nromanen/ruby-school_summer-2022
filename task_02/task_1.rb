def powers_of_two(n)

    if n < 0 
        p "Your number < 0"
    else

        array = []

        (0..n).each do |num|
            #array.append "2^#{2**num}" # => ["2^1", "2^2", "2^4"]
            array.append 2**num 
        end
        
    end

    return array

end
  
powers_of_two(0) # [1]
powers_of_two(1) # [1, 2]
powers_of_two(4) # [1, 2, 4, 8, 16]