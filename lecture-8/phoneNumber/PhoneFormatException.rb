class PhoneFormatException < StandardError
  attr_reader :number

  def initialize(number, msg = "Phone number #{number} is incorrect. You should enter phone in format +38dddddddddd.")
    @number = number
    super(msg)
  end
end
