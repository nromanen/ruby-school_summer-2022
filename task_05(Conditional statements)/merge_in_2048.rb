def merge(row)
    result = []
    temp = row.reject(&:zero?)
    temp.each_with_index { |elem, index|
      if index == temp.length - 1
        result.push(elem)
        break
      else
        if elem == temp[index + 1]
          result.push(elem * 2)
          temp[index + 1] = 0
        else
          result.push(elem) unless elem == 0
        end
      end
    }
  
    while result.length < row.length
      result.push(0)
    end 
    result
  end
  
  puts merge([2,0,2,2])
  puts merge([2,0,2,4])
  puts merge([0,0,2,2])