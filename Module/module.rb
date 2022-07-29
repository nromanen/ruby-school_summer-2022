module ConsoleInput
  def string
    puts "Enter text that'd be converted to string."
    str = gets.to_str
    puts "This is your string => #{str}"
  end

  def number
    puts "Enter any number."
    num = gets.to_i
    puts "This is your number => #{num}"
  end

  def symbol
    puts "Enter any letter/word here. It will be converted to symbol."
    sym = gets.to_sym
    puts "This is your symbol => #{sym}"
  end

  def hash_input
    result = Hash.new
    puts "Enter hash in format key: value or key => value."
    entered = gets
    gathered = entered.split (' ')
    result = [gathered[0] => gathered[1]]
    puts "This is your hash => #{result}"
  end

end