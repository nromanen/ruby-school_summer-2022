module ValidType
  def float?
    true if Float self rescue false
  end

  def int?
    true if Integer self rescue false
  end

  def valid_int?
    int? & float?
  end

  def valid_float?
    !int? & float?
  end
end

module ConsoleInput
  String.include ValidType

  def string
    print "Enter any string:\n"
    gets.chomp.to_s
  end

  def number
    print "Enter any number:\n"
    res = gets.chomp.gsub(/[.,]/, '.' => '.', ',' => '.')
    begin
      if res.valid_float?
        res.to_f
      elsif res.valid_int?
        res.to_i
      else
        raise ArgumentError.new("Error when entering data; should be float (x.xx) or int (x)")
      end
    rescue Exception => e
      print "#{e.message} -> #{res}"
    end
  end

  def symbol
    print "Enter any letters:\n"
    gets.chomp.downcase.gsub(/\s+/, "").to_sym
  end

  def new_hash
    print "Enter hash in format 'key: value' or 'key => value':\n"
    str = gets.chomp
    begin
      unless str.include?('=>') || str.include?(':')
        raise ArgumentError.new("Error when entering data; required format is 'key: value' or 'key => value'")
      end
      hash_str = str.scan(/\w+/).each_slice(2).to_h
    rescue Exception => e
      print "#{e.message} -> #{str}"
    end
  end
end
