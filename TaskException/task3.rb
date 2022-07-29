def third_order(maximal_value)
  # initing tries
  tries = 0
  # initing try/catch block
  begin
    #creating random num
    guessed_number = rand(maximal_value)
    puts "Multiplicate #{guessed_number} to ^3d order..."
    #taking user value
    user_num = gets.chomp.to_i
    # checking result
    if guessed_number**3 == user_num
      puts "You are correct.\nYour answer #{user_num}\nCorrect answer #{guessed_number**3}\n===================\n"
    else
      raise "Your answer incorrect. Try again"
    end
    #making rescue block
  rescue Exception => e
    tries += 1
    puts "Exception #{e.message}. BAD VALUE Exception. "
    retry while tries <= 3
    puts "Try next time."
  end
end

#calling func
third_order(15)