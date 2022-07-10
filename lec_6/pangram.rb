def pangram(str)
  split_str = str.chars.map(&:downcase)
  alphabet = ('a'..'z').to_a
  res = true
  alphabet.each{ |e|
    unless split_str.include? e.downcase
      res = false
      break
    end
  }
  puts res
end

pangram("The quick brown fox jumps over the lazy dog")
pangram("The q123uick brown fox jump!!!!s over the lazy dog....")
pangram("The brown fox jumps over the lazy dog")