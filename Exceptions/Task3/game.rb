class Game

  def initialize
    @current_try = 0
  end

  def third_order(high_border)
    begin
      value = rand(high_border)
      result = value**3

      print "#{value} * #{value} * #{value}? > "
      input = gets.chomp.to_i

      unless input.eql?(result)
        @current_try += 1

        raise "Wrong answer :(\n"
      end

      print "Good job.\n"
    rescue
      if @current_try >= 3
        print "Try next time.\n"
      else
        retry
      end
    end
  end

end
