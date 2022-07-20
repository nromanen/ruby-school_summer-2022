# Conditions task 2

# Main Method
def pangram?(string)
  # Taking a count of alphabet
  length = ('a'..'z').count
  # refactor input string to downcase
  input = string.downcase
  # making sctring scan template
  template = /[a-z]/
  # checking conditions and returning boolean
  input.scan(template).uniq.size == length ? true : false
end

# Input string
text = 'The quick brown fox jumps over the lazy dog.'
# Calling method
print("The sentence \"#{text}\" \nis pangram? #{pangram?(text) ? 'Yes.' : 'No.'}")


