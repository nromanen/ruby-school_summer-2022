def pangram?(line)
    line.downcase.gsub(/[^a-zA-Z]/, "").split("").uniq.size == 26
end

  
  p self.is_pangram_slow?("Here, str is the string whose length is to be calculated") #expected false
  p self.is_pangram_slow?("This is not a pangram.") #expected true
  p self.is_pangram_slow?("The quick brown fox jumps over the lazy dog") #expected false

  p "Here, str is the string whose length is to be calculated".downcase.gsub(/[^a-z]/, "").split("").uniq.size
  p "This is not a pangram.".downcase.gsub(/[^a-z]/, "").split("").uniq.size
  p "The quick brown fox jumps over the lazy dog".downcase.gsub(/[^a-z]/, "").split("").uniq.size

