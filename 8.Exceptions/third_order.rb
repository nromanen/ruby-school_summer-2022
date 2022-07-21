def guess_number(attempts, max)
    try = 0
    begin
        num = rand(max)
        p "#{num} in 3d order ="
        user_num = gets.chomp.to_i
        raise "Wrong answer!" if num**3 != user_num
        p "Good job."
    rescue Exception => e
        try += 1
        p e.message
        retry if try < attempts
        p "Try next time."
    end
end

guess_number(3, 10)
