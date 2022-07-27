def pangram(string)
  string_downcase = string.chars.map(&:downcase)
  letters = ('a'..'z').to_a
  result = true
  letters.each do |l|
    unless string_downcase.include? l.downcase
      result = false
      break
    end
  end
  result
end

puts pangram('The quick brown fox jumps over the lazy dog')
puts pangram('Try another string')
