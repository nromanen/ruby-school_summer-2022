def pangram?(string)
  string.downcase.scan(/[a-z]/).uniq.size == 26
end

text = 'The quick brown fox jumps over the lazy dog.'
print("The sentence \"#{text}\" \nis pangram? #{pangram?(text) ? 'Yes.' : 'No.'}")