#Arrays: Task 6

def square_or_not_square(arr)
  output = []
  if arr.empty?
    print "Array #{arr} is Empty!\n"
  else
    arr.each do |i|
      Math.sqrt(i)%1 == 0 ? output.push(Math.sqrt(i).to_i) : output.push(i**2)
    end
    return output
  end
end

print square_or_not_square([4, 3, 16, 9, 1, 6])
