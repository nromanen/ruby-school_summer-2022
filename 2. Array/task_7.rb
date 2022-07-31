def alternate(n, first, second)
    
    array = []
    i = 0

    while i < n
        
        if i < n 
            array.append(first)
            i += 1
        end
        
        if i < n 
            array.append(second)
            i += 1
        end

    end

    return array

end

alternate(5, true, false) # [true, false, true, false, true]
alternate(20, "blue", "red") #['blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red']
alternate(0, "lemons", "apples") # []