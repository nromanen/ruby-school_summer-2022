def square_or_square_root (myArray)
        result = myArray.map do |i|
          if Math.sqrt(i)% 1 == 0
            Math.sqrt(i).round
          else
            i ** 2
          end
        end
      end
      
      print square_or_square_root([4,3,9,7,2,1])
