def pangram?(string)
  string.downcase.scan(/[a-z]/).uniq.size == 26
end
