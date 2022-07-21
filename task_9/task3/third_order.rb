class Prog
    def initialize
        @try = 0
    end


def third_order(max_border)

    begin
        
        number = rand(max_border)
        result = number**3

        print "#{number} * #{number} * #{number}? > "
        input = gets.chomp.to_i

        if input.eql?(result)

            @try += 1

        raise "Wrong answer :(\n"
        end

        puts "Good job.\n"
    rescue
        if @current_try >= 3
            print "Try next time.\n"
          else
            retry
          end
    end
end
end