class PhoneFormatException < StandardError
    def initialize(phone)
        @phone = phone
    end
    def to_s
        " Phone number < #{@phone} > is incorrect. You should enter phone in format +38dddddddddd. "
    end    
end

module Validation
    def phone_valid?(phone)
        flag = true
        if phone.length != 13 then flag = false  end
        if phone[0..2] != '+38' then flag = false end
        k = 3 
        while k < phone.length 
            if (phone[k] < '0') || (phone[k] > '9') then flag = false end
            k +=1
        end
        flag
    end
end

class User 
    include Validation

    attr_reader :name
    attr_writer :phone
    def initialize(name, phone)
        @name = name
        begin
            if phone_valid?(phone) == false 
puts "Call exeption"
                raise  PhoneFormatException, phone
            else 
                @phone = phone
            end
        rescue PhoneFormatException
            puts $!.message 
            @phone = "Not number!!!" 
        end
    end
    def to_s
        "User name: #{@name} \nUser phone: #{@phone}"
    end
    
end



user1 = User.new("User1", '+380678765567')
puts user1

user2 = User.new("User2", '+38067f765567')
puts user2