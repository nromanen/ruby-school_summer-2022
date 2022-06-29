class Name
  def self.validate_name(name)
    index = name =~ /^(\p{Upper}\p{Lower}{0,14})(-\p{Upper}\p{Lower}{0,15})?$/
    return false if index.nil?

    true
  end
end
