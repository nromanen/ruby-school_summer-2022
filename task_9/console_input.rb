module ConsoleInput
  def self.string
    puts 'Enter any string'
    gets.chop
  end

  def self.number
    puts 'Enter any number'
    gets.chop.to_i
  end

  def self.symbol
    puts 'Enter any letters'
    gets.chop.to_sym
  end

  def self.console_hash
    puts("Enter hash in format 'key: value' or 'key => value'")
    result = gets.chop.split(/ *:|(=>) */)
    { result[0].to_sym => result[1] }
  end
end
