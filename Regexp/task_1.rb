# Task1

def big_letters (str)
    str =~ /[A-Z]/
  end
  
  def small_letters (str)
    str =~ /[a-z]/
  end

  def numbers (str)
    str =~ /[0-9]/
  end
  
  def special_symbols (str)
    str =~ /[^\p{L}\p{N}]/
  end

  word_1 = ('abc1')

  puts "#{big_letters(word_1)}_#{small_letters(word_1)}_#{numbers(word_1)}_#{special_symbols(word_1)}"