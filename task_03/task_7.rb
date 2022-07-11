def alternate(n, first, second)
        array = []
            (0...n).each do |i|
                array.append i.even? ? first : second
            end
    return array
end
  
  puts alternate(5, true, false).to_s
  puts alternate(10, "blue", "red").to_s
  puts alternate(0, "first", "second").to_s