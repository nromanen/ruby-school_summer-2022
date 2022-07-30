def is_pangram(str)
  if ('a'..'z').all? { |word| str.downcase.include? (word) }
    true
  else false
  end
end
string = gets.chomp
puts is_pangram(string)