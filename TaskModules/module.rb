# task module

#initing module
module ConsoleInput
  #method for number
  def number
    puts "Enter any number"
    num = gets.to_i
    puts "Your number: #{num}"
  end

  #method for hash
  def hash
    output = Hash.new
    puts "Enter hash in format KEY then VALUE"
    input = gets.chomp
    value = input.split(' ')
    output = [value[0] => value[1]]
    puts "Your hash: #{output}"
  end

  # method for symbol
  def symbol
    puts "Enter any word, that be converted to symbol "
    symbol = gets.to_sym
    puts "Your symbol: #{symbol}"
  end

  def string
    puts "Enter any words or string that be converted to string"
    string = gets.chomp.to_s
    puts "Your string: #{string}"
  end
end




