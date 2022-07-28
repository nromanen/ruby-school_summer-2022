require_relative 'Validation'
require_relative 'PhoneFormatException'
class User
  attr_reader :name
  attr_writer :phone

  def initialize(name)
    @name = name
  end

  def phone=(phone)
    if Validation.phone_valid?(phone)
      @phone = phone
    else
      raise PhoneFormatException.new "#{phone}"
    end
  end


end