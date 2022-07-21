require_relative 'phone_format_exception.rb'
require_relative 'validation.rb'

class User
  include Validation

  attr_reader :name
  attr_writer :user_phone

  def initialize(name)
    @name = name
  end

  def user_phone_valid=(user_phone)
    begin
      unless user_phone_valid?(user_phone)
        raise PhoneFormatException.new(user_phone)
      end
      @user_phone = user_phone
    rescue PhoneFormatException => e
      print e.message
    end
  end

  def to_s
    "Username: #{@name}\n" +
      "Phone: #{@user_phone}\n"
  end
end