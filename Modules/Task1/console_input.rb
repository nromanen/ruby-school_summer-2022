require_relative 'string_float_or_int.rb'

module ConsoleInput
  String.include StringFloatOrInteger

  def self.string
    read_from_console(__method__)
  end

  def self.number
    input = read_from_console(__method__)

    begin
      if input.integer?
        input.to_i
      elsif input.float?
        input.to_f
      else
        raise ArgumentError.new("Wrong input data")
      end
    rescue Exception => e
      print "#{e.message} >>> #{input}"
      input
    end
  end

  def self.symbol
    read_from_console(__method__).downcase.gsub(/\s+/, "_").to_sym
  end

  def self.c_hash
    str_hash = read_from_console(__method__)

    begin
      if !str_hash.include?('=>') || !str_hash.include?(':')
        raise ArgumentError.new("Wrong input data")
      end

      str_hash.split(',')
              .map{ |pair| pair.scan(/\w+/) }
              .map { |pair| [pair[0].to_sym, pair[1]] }
              .to_h

    rescue Exception => e
      print "#{e.message} >>> #{str_hash}"
      str_hash
    end
  end

  private

  def self.read_from_console(type)
    case type
    when :string
      print "Enter any string >>>"
    when :number
      print "Enter any number >>>"
    when :c_hash
      print "Enter hash in format 'key: value' or 'key => value' with ',' separator >>>"
    when :symbol
      print "Enter any letters >>>"
    else
      print "Error occurred: wrong param -> #{type}\n"
      return
    end

    gets.chomp
  end
end
