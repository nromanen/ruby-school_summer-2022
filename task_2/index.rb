class Index
  def self.uppercase_index(string)
    string =~ /[A-Z]/
  end

  def self.lowercase_index(string)
    string =~ /[a-z]/
  end

  def self.digit_index(string)
    string =~ /\d/
  end

  def self.symbol_index(string)
    string =~ /[^\w\d]/
  end

  def self.task(string)
    "#{uppercase_index(string)}_#{lowercase_index(string)}_#{digit_index(string)}_#{symbol_index(string)}"
  end
end
