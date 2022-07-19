module ConsoleInput
  def self.string
    read_from_console(__method__)
  end

  def self.number
    read_from_console(__method__)
  end

  def self.symbol
    read_from_console(__method__)
  end

  def self.c_hash
    str_hash = read_from_console(__method__)
    str_hash.split(',')
            .map{ |pair| pair.scan(/\w+/) }
            .map { |pair| [pair[0].to_sym, pair[1]] }
            .to_h
  end

  private

  def self.read_from_console(type)
    case type
    when :string
      print "Enter any string >>>"
      gets.chomp
    when :number
      print "Enter any number >>>".chomp
      gets.chomp.to_f
    when :c_hash
      print "Enter hash in format 'key: value' or 'key => value' with ',' separator >>>"
      gets.chomp
    when :symbol
      print "Enter any letters >>>"
      gets.chomp.downcase.gsub(/\s+/, "_").to_sym
    else
      print "Error occurred: wrong param -> #{type}\n"
    end
  end
end
