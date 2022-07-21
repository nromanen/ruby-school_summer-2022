def third_order(max)
  try = 1
  begin
    number = rand(max)
    res = number**3
    puts "#{number} * #{number} * #{number} = "
    answer = gets.chomp.to_i
    if answer.eql?(res)
      puts "Good job!"
    else
      try += 1
      raise "Wrong answer"
    end
  rescue
    if try > 3
      puts "Fail"
    else
      retry
    end
  end
end

third_order(6)