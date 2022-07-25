def merge_2048(array)
  checkmerge = false
  for i in 0..3
    if i > 0
      if array[i-1] == array[i]
        array[i-1] += array[i]
        array[i] = 0
        checkmerge=true
      else
        if array[i-1] == 0
          for j in i..3
            array[j-1] = array[j]
            array[j] = 0
          end
        end
      end
    end
  end
  if !checkmerge
    for i in 1..3
      if(array[i]==array[i-1])
        array[i-1] += array[i]
        array[i] = 0
      else
        if array[i-1] == 0
          for j in i..3
            array[j-1] = array[j]
            array[j] = 0
          end
        end
      end
    end
  end
  array
end
#####################################################
puts "Enter 2048 row\n"
arr = []
for i in 0..3
  arr[i] = gets.to_i
end

puts merge_2048(arr)