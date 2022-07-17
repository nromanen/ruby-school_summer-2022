def panagram?(string)
    string.downcase.scan(/[a-z]/).uniq.size == 26
 end

puts panagram?("The quick brown fox jumps over the lazy dog.")
puts panagram?("This is not a pangram.")