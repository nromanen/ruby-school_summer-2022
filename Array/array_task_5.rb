def testing (letters)
    i = 0
     while i < letters.size do 
        letters.map { |x| puts "#{i+=1}: #{x}"}
        i += 1
     end 
    end
    testing (["a","b","c"])
