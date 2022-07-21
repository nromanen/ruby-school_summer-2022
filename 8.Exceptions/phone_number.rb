module Validation
    class PhoneFormatException < StandardError
        attr_reader :message
        def initialize phone
          @message = "Phone number <#{phone}> is incorrect. You should enter phone in format <+38dddddddddd>."
        end
    end

    class PhoneNumberValidator
        def self.phone_valid? number
            !!(number =~ /^\+38\d{10}$/)   
        end
    end
end

module Entities
    class Phone
        attr_reader :number
        def initialize number
            @number = number
        end
    end
    
    class User
        attr_reader :name, :number
        def initialize name
            @name = name
        end

        def add_phone_number number
           begin
                raise Validation::PhoneFormatException.new(number) unless Validation::PhoneNumberValidator.phone_valid?(number)
                @number = number
           rescue Validation::PhoneFormatException => e
                p e.message
           end
        end
    end
end

phone = Entities::Phone.new("+380961234567")
user = Entities::User.new("Peter")
user.add_phone_number(phone.number)
