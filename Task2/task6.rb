# Ruby task 6 - Arrays `n Loops

# main function
def square_or_square_root(arr)
  # declare output array variable
  output = []
  # checking array on epmty?
  if arr.empty?
    print "Array #{arr} is Empty!\n"
  else
    # iteraring every element
    arr.each do |i|
      # checking square root conditions
      Math.sqrt(i)%1 == 0 ? output.push(Math.sqrt(i).to_i) : output.push(i**2)
    end
    return output
  end
end

#calling function
print square_or_square_root([4, 3, 9, 7, 2, 1])
#print square_or_square_root([])
#print square_or_square_root([0, 5, 9, 8, 1, 12, 15])