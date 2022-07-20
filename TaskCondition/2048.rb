# Condition task 1

# initing method
def merge(row)
  # deleting zeros in row
  nonzero_row = row.reject { |n| n == 0 }
  # creating empty variables
  output = []
  i = 0
  # iterarting row
  while i < nonzero_row.size
    # checking condition
    if i + 1 < nonzero_row.size && nonzero_row[i] == nonzero_row[i+1]
      output.push(nonzero_row[i] * 2)
      i += 2
    else
      output.push(nonzero_row[i])
      i += 1
    end
  end
  # output
  output += [0] * (row.size - output.size)
end

# calling method
puts "Result is:\nFirst call - #{merge([10,5,4,7])}\nSecond call - #{merge([2,0,2,2])}\nThird call - #{merge([2,0,1,6])}\n"
