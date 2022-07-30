
module Phone_valid
  def check? number
  number.match? /(\+38)([0-9]{10})$/
  end
end
class MyCustomException < StandardError
  include Phone_valid
  def initialize(number)
    if check?(number)
    else
      puts "Phone number #{number} is incorrect. You should enter phone in format +38dddddddddd"
    end
  end
end
class User
  include Phone_valid
  attr_reader :phone, :name
  def initialize(name)
    @name=name
  end
  def getName
    @name
  end
  def setPhone number
    if check?(number)
      @phone=number
    else
      exception=MyCustomException.new(number)
    end
  end
end

