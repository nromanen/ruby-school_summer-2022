class PhoneFormatException < StandardError
  attr_reader :error

  def initialize(phone)
    @error = "Phone number #{phone} is incorrect. You should enter phone in format +38dddddddddd.\n"
  end

  def message
    @error
  end
end
