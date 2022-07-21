class PhoneFormatException < StandardError
  attr_reader :err

  def initialize(phone)
    @err = "Phone number #{phone} is incorrect. You should enter phone in format +38dddddddddd.\n"
  end

  def message
    @err
  end
end
