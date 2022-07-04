def number(str)
        str.each_index do |i|
            str[i] = "#{i+1}: #{str[i]}"
        end
    return str
end
  
  puts number(["a", "b", "c"])