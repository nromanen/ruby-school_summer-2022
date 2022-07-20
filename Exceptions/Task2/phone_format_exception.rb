class PhoneFormatException < StandardError
  attr_reader :message

  def initialize(phone)
    @message = "Phone number \"#{phone}\" is incorrect. You should enter phone in format +38dddddddddd.\n"
  end

  def message
    @message
  end

end
