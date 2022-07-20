module ConsoleInput
  def self.string
    print "Enter any string:\n"
    gets.chomp
  end

  def self.number
    print "Enter any number:\n"
    gets.chomp.gsub(/[.,]/, '.' => '.', ',' => '.').to_f
  end

  def self.symbol
    print "Enter any letters:\n"
    gets.chomp.downcase.gsub(/\s+/, "").to_sym
  end

  def self.new_hash
    print "Enter hash in format 'key: value' or 'key => value':\n"
    str = gets.chomp
    hash_str = str.scan(/\w+/).each_slice(2).to_h
  end
end
