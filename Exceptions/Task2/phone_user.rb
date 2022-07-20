require_relative 'phone_format_exception.rb'
require_relative 'validation.rb'

class PhoneUser
  include Validation

  attr_reader :name
  attr_writer :phone

  def initialize(name)
    @name = name
  end

  def phone=(phone)

    begin
      unless phone_valid?(phone)
        raise PhoneFormatException.new(phone)
      end

      @phone = phone
    rescue PhoneFormatException => e
      print e.message
    end

  end

  def to_s
    "Username: #{@name}\n" +
      "Phone: #{@phone}\n"
  end

end
