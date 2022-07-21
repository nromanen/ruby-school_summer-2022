module ConsoleInput
  def number
    puts "Enter any number"
    num = gets.chomp.to_i
    puts "Your number: #{num}"
  end

  def hash
    output = Hash.new
    puts("Enter hash in format 'key: value' or 'key => value")
    result = gets.chop.split(/ *:|(=>) */)
    return { result[0].to_sym => result[1] }
  end

  def symbol
    puts "Enter any letters"
    symbol = gets.to_sym
    puts "Your symbol: #{symbol}"
  end

  def string
    puts "Enter any string"
    string = gets.chomp.to_s
    puts "Your string: #{string}"
  end
end
