def alternate(n, first, second)
    myArray = []
    (0...n).map do |i|
        myArray.append i.even? ? first : second
    end
    return myArray
  end

  print alternate(5, true, false)
  print alternate(10, "blue", "red")
  print alternate(0, "sds", "sdsww")