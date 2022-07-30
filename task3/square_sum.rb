
def squaresum(array)
  sum=0
    array.each do |n|
      sum = sum + n.pow(2)
    end
  sum
end


def enterarray(arrsize)
  arr = []
  arrsize -= 1
  (0..arrsize).each{|n| arr[n] = gets.to_i}
  squaresum(arr)
end
puts 'Enter a size of array: '
arr_size=gets.to_i
puts enterarray(arr_size)
