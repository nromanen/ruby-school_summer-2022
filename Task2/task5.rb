# Ruby task 4 - Arrays `n Loops

def numbering_lines(lines_content)
  # Iterating every element in array
  for  i in 0..lines_content.length
    # redefine each element in array, that given by iteration index
    lines_content[i] = "#{i+1}: #{lines_content[i]}"
  end
  # output values
  puts lines_content
end

# input values
numbering_lines(["first line {", "  print (Some Code...)", "}"])