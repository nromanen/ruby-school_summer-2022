# task module

#initing module
module ConsoleInput
  #method for number
  def number
    puts "Enter any number"
    num = gets.chomp
    begin
      if num.valid_int?
        num.to_i
      elsif num == 0
        num.to_i
      else
        raise ArgumentError.new("Error when entering data; should be float (x.xx) or int (x)")
      end
    rescue Exception => e
      puts "Exception: #{e.message} in:  #{num}\n"
    end

  end

  #method for hash
  def hash
    output = Hash.new
    puts "Enter hash in format KEY then VALUE"
    begin
      input = gets.chomp
      value = input.split(' ')
      output = [value[0] => value[1]]
    rescue Exception => e
      puts "Exception #{e.message} in: #{input}.\nPlease put valid data in format (KEY VALUE)"
    end
    puts "Your hash: #{output}"
  end

  # method for symbol
  def symbol
    pattern = /[a-zA-Z]/
    puts "Enter any word, that be converted to symbol "
    symbol = gets
    begin
      if symbol=~ pattern
        symbol.to_sym
      else
        raise "Incorrect value. Please, put a latin letters w/o whitespaces"
      end
    rescue Exception => e
      puts "Exception #{e.message} in: #{symbol}.\nPlease put valid data in format 'SYMBOL'"
    end
    puts "Your symbol: #{symbol}"
  end

  def string
    puts "Enter any words or string that be converted to string"
    string = gets.chomp.to_s
    puts "Your string: #{string}"
  end
end

class ModuleCall
# including module to class
include ConsoleInput
end

# calling module methods from class object
obj = ModuleCall.new
obj.number
obj.string
obj.symbol
obj.hash