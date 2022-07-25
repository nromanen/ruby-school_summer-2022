def pangram(str)
  split_str = str.chars.map{ |ch| ch.downcase}
  alphabet = ('a'..'z').to_a
  res = true
  alphabet.each { |s|
    unless split_str.include? s.downcase
      res = false
      break
    end
  }
  puts res
end

puts "Enter your text:"
pangram(gets.chomp)