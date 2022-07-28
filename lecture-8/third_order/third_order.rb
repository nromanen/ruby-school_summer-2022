module Third_order
  def self.third_order(top_limit, max_attempts)
    begin
      attempts ||= 1
      n = rand(top_limit)
      puts "Attempt #{attempts}. WHAT IS #{n} * #{n} * #{n}"
      number = gets
      if number.to_i == n.pow(3)
        puts "GOOD JOB! U won nothing 😎"
      else
        raise StandardError.new
      end
    rescue
      attempts += 1
      puts "try again"
      attempts <= max_attempts ? retry : nil
    end
  end
end
