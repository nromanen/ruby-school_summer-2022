# Conditions task 2

# Main Method
def pangram?(string)
  # Taking a count of alphabet
  input = string.downcase
  # making sctring scan template
  template = /[a-z]/
  # checking conditions and returning boolean
  input.scan(template).uniq.size == 26 ? true : false
end

# Input string
text = 'The five boxing wizards jump quickly'
# Calling method
print("\"#{text}\" \nThis is pangram?\n #{pangram?(text) ? 'Yes.' : 'No.'}")


