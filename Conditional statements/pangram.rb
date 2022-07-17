def pangram?(string)
  string.gsub(/[^a-zA-Z]/, "").downcase.chars.uniq.length == 26
end

p pangram?("The quick brown fox jumps over the lazy dog.") #expected true
p pangram?("This is not a pangram.") #expected false