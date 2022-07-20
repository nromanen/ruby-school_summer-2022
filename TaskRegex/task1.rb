# Ruby task 1

# Input string
input_string = 'h4e8c#15Hg_HH'

# finds index of first digit, that included in range 0-9. Also it can be found using [0-9]
def check_numbers(input_string)
  input_string =~ /\d/
end

# finds index of first regular, that included in capital letters alphabet A-Z
def check_capitals(input_string)
  input_string =~ /[A-Z]/
end

# finds index of first regular, that included in alphabet a-z
def check_regular(input_string)
  input_string =~ /[a-z]/
end

# finds index of special using "All elements, that not a (A-Z, 0-9 or spaces)"
def check_specials(input_string)
  input_string =~ /[^\p{L}\p{N}]/
end

#results
output = "REGEX indexes - #{check_numbers(input_string)}_#{check_capitals(input_string)}_#{check_regular(input_string)}_#{check_specials(input_string)}"
print(output)
